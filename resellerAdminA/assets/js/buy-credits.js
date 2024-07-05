function paySubmit(id) {
    var bl = document.getElementById(id);

    bl.disabled = true;

    const radioBtnPay = document.querySelectorAll("input[name=option2]:checked");

    if (radioBtnPay.length <= 0) {
        toastr.error("Please Choose Reload Option!");
       
        bl.disabled = false;
        return false;
    }

    bl.disabled = false;
    toastr.success("thank you for choosing ");
}