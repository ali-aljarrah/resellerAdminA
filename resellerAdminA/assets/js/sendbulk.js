// Table datatable
$('#latest-table').DataTable({
    "paging": false,
    "bInfo": false
});

// On keypress event to check the message length
// and update the counter
$('#txtMessage').on('keypress', function () {
    let len = this.value.length;

    $('#char-count').empty();
    $('#char-count').text(len);

    if (len >= 160) {
        if (len % 160 == 0) {
            msg_count = (len / 160) + 1;
            $('#msg-count').empty();
            $('#msg-count').text(msg_count);
        }
    } else {
        $('#msg-count').empty();
        $('#msg-count').text("1");
    }
});

// Updating the selected files after picking a file
// from the files tree
$("[name='file-list-checkbox']").change(function () {
    var value = $(this).val();
    var filesTextArea = $('#selected-files').val();
    var numbersCount = parseInt(value.match(/\|(.*?)\|/)[1]);
    var oldFilesCount = parseInt($('#files-count').text());
    var oldNumberCount = parseInt($('#number-count').text());

    if ($(this).is(':checked')) {
        $('#selected-files').val(filesTextArea + value + ',');
        $('#files-count').text(oldFilesCount + 1);
        $('#total_files').text(oldFilesCount + 1);
        $('#number-count').text(oldNumberCount + numbersCount);
        $('#total_recipients').text(oldNumberCount + numbersCount);
        $('#total_message').text(oldNumberCount + numbersCount);
    } else {
        $('#selected-files').val(filesTextArea.replace(value + ',', ''));
        $('#files-count').text(oldFilesCount - 1);
        $('#total_files').text(oldFilesCount - 1);
        $('#number-count').text(oldNumberCount - numbersCount);
        $('#total_recipients').text(oldNumberCount - numbersCount);
        $('#total_message').text(oldNumberCount - numbersCount);
    }
});

// Templates placeholders to test the modal
var templates = [
    {
        templateName: "Evacuation",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
    },
    {
        templateName: "First Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Second Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    },
    {
        templateName: "Third Warning",
        templateText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
    }
];

// Modal initialize
var chooseTemplate = new bootstrap.Modal(document.getElementById("chooseTemplate"), {});

// Updating the templates list in the modal and open it
$('#chooseTemplateBtn').click(function (e) {
    e.preventDefault();

    $('#templates-table tbody').empty();

    $.each(templates, function (i) {
        $('#templates-table tbody').append(`
            <tr class="fs-14 dark-color">
                <td>
                    <div class="form-check form-check-custom form-check-success form-check-solid">
                        <input class="form-check-input select-template" type="radio" value="`+ templates[i].templateText + `" name="selectTempalte"/>
                    </div>
                </td>
                <td>
                    `+ templates[i].templateName + `
                </td>
                <td>
                  <div class="p-2 black-color-1 fs-12 rounded bg-gray">  `+ templates[i].templateText + `</div>
                </td>
            </tr>
        `);
    });

    chooseTemplate.show();
});

// Submit choose template event
$('#chooseTemplateSubmitBtn').click(function (e) {
    e.preventDefault();

    $(this).prop('disabled', true);

    if ($('input[name="selectTempalte"]').is(':checked')) {
        var selectedValue = $('input[name="selectTempalte"]:checked').val();

        var oldText = $('#txtMessage').val();

        $('#txtMessage').val(oldText + selectedValue);

        $(this).prop('disabled', false);

        chooseTemplate.hide();
    } else {
        toastr.error("Please select a template!");

        $(this).prop('disabled', false);
    }
});

// Updating the message body after choosing a
// Personalize option
$('#var_1').click(function (e) {
    e.preventDefault();

    var oldText = $('#txtMessage').val();

    $('#txtMessage').val(oldText + ' [var1]');
});
$('#var_2').click(function (e) {
    e.preventDefault();

    var oldText = $('#txtMessage').val();

    $('#txtMessage').val(oldText + ' [var2]');
});
$('#var_3').click(function (e) {
    e.preventDefault();

    var oldText = $('#txtMessage').val();

    $('#txtMessage').val(oldText + ' [var3]');
});

// Submit send bulk SMS event
$('#btnSubmit').click(function (e) {
    e.preventDefault();

    $(this).prop('disabled', true);

    var txtSender = $('#txtSender').val();
    var txtNumber = $('#txtNumber').val();
    var cmbMessageType = $('#cmbMessageType').find(":selected").val();
    var txtMessage = $('#txtMessage').val();
    var selectedFiles = $('#selected-files').val();

    if (txtSender.length > 18 || txtSender.trim() == '') {

        toastr.error("Sender Name can't be empty and must be less than 18 characters!");

        $(this).prop('disabled', false);

        return;
    }

    if (cmbMessageType == '') {

        toastr.error("Please select message type!");

        $(this).prop('disabled', false);

        return;
    }

    if (selectedFiles.trim() == '') {

        toastr.error("Please select contact files!");

        $(this).prop('disabled', false);

        return;
    }

    if (txtMessage.trim() == '') {

        toastr.error("Please enter message to send!");

        $(this).prop('disabled', false);

        return;
    }

    toastr.success("Message has been sent Successfully!");

    $(this).prop('disabled', false);
});