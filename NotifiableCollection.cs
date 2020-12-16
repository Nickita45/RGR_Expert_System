using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;

namespace WpfAppRgr
{
    public class NotifiableCollection<T> : ObservableCollection<T>
        where T : class, INotifyPropertyChanged
    {
        /// <summary>
        /// Occurs when collection item property changes.
        /// </summary>
        public event EventHandler<ItemChangedEventArgs> ItemChanged;

        /// <summary>
        /// Invokes the ItemChanged event.
        /// </summary>
        /// <param name="e">The ItemChangedEventArgs instance containing the item index.</param>
        public void InvokeItemChanged(ItemChangedEventArgs e)
        {
            if (ItemChanged != null)
            {
                ItemChanged(this, e);
            }
        }

        /// <summary>
        /// Clears the items.
        /// </summary>
        protected override void ClearItems()
        {
            foreach (var item in Items)
            {
                item.PropertyChanged -= ItemPropertyChanged;
            }
            base.ClearItems();
        }

        /// <summary>
        /// Sets the item.
        /// </summary>
        /// <param name="index">The index.</param>
        /// <param name="item">The item.</param>
        protected override void SetItem(int index, T item)
        {
            Items[index].PropertyChanged -= ItemPropertyChanged;
            base.SetItem(index, item);
            item.PropertyChanged += ItemPropertyChanged;
        }

        /// <summary>
        /// Removes the item.
        /// </summary>
        /// <param name="index">The index.</param>
        protected override void RemoveItem(int index)
        {
            Items[index].PropertyChanged -= ItemPropertyChanged;
            base.RemoveItem(index);
        }

        /// <summary>
        /// Inserts the item.
        /// </summary>
        /// <param name="index">The index.</param>
        /// <param name="item">The item.</param>
        protected override void InsertItem(int index, T item)
        {
            base.InsertItem(index, item);
            item.PropertyChanged += ItemPropertyChanged;
        }

        /// <summary>
        /// Items property changed event handler.
        /// </summary>
        /// <param name="sender">The item.</param>
        /// <param name="e">The PropertyChangedEventArgs instance containing the item property name.</param>
        private void ItemPropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            var item = sender as T;
            InvokeItemChanged(new ItemChangedEventArgs(Items.IndexOf(item), e.PropertyName));
        }
    }

    /// <summary>
    /// Provides data for ItemChanged event.
    /// </summary>
    public class ItemChangedEventArgs : PropertyChangedEventArgs
    {
        /// <summary>
        /// Index of item that was changed.
        /// </summary>
        public int Index { get; set; }

        /// <summary>
        /// Initializes a new instance of the ItemChangedEventArgs class.
        /// </summary>
        /// <param name="index">Index of changed item.</param>
        /// <param name="propertyName">Name of changed property in item.</param>
        public ItemChangedEventArgs(int index, string propertyName)
            : base(propertyName)
        {
            Index = index;
        }
    }
}
