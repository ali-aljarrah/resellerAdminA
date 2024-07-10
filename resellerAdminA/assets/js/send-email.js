// Table datatable
$(document).ready(function () {
    $('#sms_report_table_processing').parent().addClass('position-relative');
    $.fn.dataTable.ext.errMode = 'none';
    $('#sms_report_table').on('error.dt', function (e, settings, techNote, message) {
        console.log('An error has been reported by DataTables: ', message);
    }).DataTable();

    var reportdata = $('#sent-sms-report').DataTable({
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

    var popupUserList = new bootstrap.Modal(document.getElementById("popupUserList"), {});
    // Submit new message event
    $('#sendEmailSubmitBtn').click(function (e) {
        e.preventDefault();
        $(this).prop('disabled', true);

        let emailMessage = $('#emailMessage').val();
        let emailRecipient = $('#emailRecipient').find(":selected").val();

        if (emailRecipient == '') {
            toastr.error("Please select email recipient");
            $(this).prop('disabled', false);
            return;
        }

        if (emailMessage == '') {
            toastr.error("Please enter the email's message");
            $(this).prop('disabled', false);
            return;
        }

        toastr.success("Email sent Successfully!");
        $(this).prop('disabled', false);
        
        popupUserList.hide();

        $('#emailMessage').val('');
        $("#emailRecipient").val($("#emailRecipient option:first").val());
    })

});