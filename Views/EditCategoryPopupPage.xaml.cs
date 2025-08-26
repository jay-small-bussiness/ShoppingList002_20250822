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
    //        cv.SelectedItem = null; // �I�������Z�b�g
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
            // ViewModel����K�v�ȃf�[�^�����o��
            //var updated = vm.ToUiModel();

            // Popup����Č��ʂ�Ԃ�
            //Close(updated);
            Close();
        }
    }


    private void OnCancelClicked(object sender, EventArgs e)
    {
        // �l�Ԃ���ꍇ
        Close();

        // �����u�L�����Z�����ꂽ�v���ď�񂾂��Ԃ������Ȃ�
        // Close(null) �� Close("Cancel") �݂����ɂ���
        // �Ăяo�����ŕ��򂵂Ă�OK
    }
}
