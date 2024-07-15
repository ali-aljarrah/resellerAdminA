// Table datatable
$(document).ready(function () {
    $('#account_activity_table_processing').parent().addClass('position-relative');
    $.fn.dataTable.ext.errMode = 'none';
    $('#account_activity_table').on('error.dt', function (e, settings, techNote, message) {
        console.log('An error has been reported by DataTables: ', message);
    }).DataTable();

    var account_activity_data = $('#account-activity-report').DataTable({
        dom: "<'d-flex mb-5 justify-content-between align-items-center flex-column flex-md-row'<''f><'mt-3 mt-md-0 mb-3 mb-md-0'B>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'d-flex justify-content-between align-items-center flex-column flex-md-row'<''l><''i><''p>>",
        buttons: [
            'csv', 'excel', 'pdf'
        ],
        "bDestroy": true,
        "lengthChange": true,
        "aLengthMenu": [[25, 50, 100], [25, 50, 100]],
        "iDisplayLength": 25,

        "ordering": false,
        "processing": true,
        'language': {
            'loadingRecords': '&nbsp;',
            'processing': '<div class="spinner"></div>'
        },
        "bProcessing": false,
        "bServerSide": false,
        "searching": true,

        scrollCollapse: true,

    });
});

// Submit edit account info event
$('#editAccountInfoSubmitBtn').click(function (e) {
    e.preventDefault();
    $(this).prop('disabled', true);

    var accountType = $('#accountType').find(":selected").val();
    var accountStatus = $('#accountStatus').find(":selected").val();

    if (accountType == '') {
        toastr.error("Select the account type!");
        $(this).prop('disabled', false);
        return;
    }

    if (accountStatus == '') {
        toastr.error("Select the account status!");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("Account information updated successfully!");

    $(this).prop('disabled', false);
});

// Submit contact details event
$('#editContactDetailsSubmitBtn').click(function (e) {
    e.preventDefault();

    toastr.success("Contact details updated successfully!");
});

// Submit change password event
$('#changePasswordSubmitBtn').click(function (e) {
    e.preventDefault();
    $(this).prop('disabled', true);

    let oldPassword = $('#oldPassword').val();
    let newPassword = $('#newPassword').val();
    let confirmNewPassword = $('#confirmNewPassword').val();

    if (oldPassword.trim() == '') {
        toastr.error("Enter the account old password!");
        $(this).prop('disabled', false);
        return;
    }
    if (newPassword.trim() == '') {
        toastr.error("Enter the account new password!");
        $(this).prop('disabled', false);
        return;
    }
    if (confirmNewPassword.trim() == '') {
        toastr.error("Confirm the account new password!");
        $(this).prop('disabled', false);
        return;
    }
    if (newPassword.trim() != confirmNewPassword.trim()) {
        toastr.error("Confirm password is not correct!");
        $(this).prop('disabled', false);
        return;
    }

    toastr.success("Account password updated successfully!");

    $(this).prop('disabled', false);

    $('#oldPassword').val('');
    $('#newPassword').val('');
    $('#confirmNewPassword').val('');
});