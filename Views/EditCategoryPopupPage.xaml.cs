using CommunityToolkit.Maui.Views;
using CommunityToolkit.Mvvm.Input;
using ShoppingList002.Models.UiModels;
using ShoppingList002.ViewModels;
using System.Windows.Input;

namespace ShoppingList002.Views;

public partial class EditCategoryPopupPage : Popup

{
    private readonly IServiceProvider _serviceProvider;
    private TaskCompletionSource<CandidateCategoryUiModel?> _taskSource = new();

    public EditCategoryPopupPage(EditCategoryPopupViewModel vm)
    {
        InitializeComponent();
        BindingContext = vm;
        Size = new Size(400,600);
    }
    //private void OnColorSelected(object sender, SelectionChangedEventArgs e)
    //{
    //    if (sender is CollectionView cv)
    //    {
    //        cv.SelectedItem = null; // 選択をリセット
    //    }

    //    if (BindingContext is EditCategoryPopupViewModel vm &&
    //        e.CurrentSelection.FirstOrDefault() is ColorUiModel selected)
    //    {
    //        vm.SelectedColor = selected;
    //    }
    //}

    //private void OnColorSelected(object sender, SelectionChangedEventArgs e)
    //{
    //    if (e.CurrentSelection?.FirstOrDefault() is ColorUiModel selected)
    //    {
    //        if (BindingContext is EditCategoryPopupViewModel vm)
    //        {
    //            vm.SelectedColor = selected;
    //        }
    //    }
    //}

    private void OnSaveClicked(object sender, EventArgs e)
    {
        if (BindingContext is EditCategoryPopupViewModel vm)
        {
            // ViewModelから必要なデータを取り出す
            //var updated = vm.ToUiModel();

            // Popupを閉じて結果を返す
            //Close(updated);
            Close();
        }
    }


    private void OnCancelClicked(object sender, EventArgs e)
    {
        // 値返さん場合
        Close();

        // もし「キャンセルされた」って情報だけ返したいなら
        // Close(null) や Close("Cancel") みたいにして
        // 呼び出し側で分岐してもOK
    }
}
