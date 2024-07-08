function paySubmit(id) {
    var bl = document.getElementById(id);

    bl.disabled = true;

    const radioBtnPay = document.querySelectorAll("input[name=payment]:checked");



    if (radioBtnPay.length <= 0) {
        toastr.error("Please Choose Reload Option!");
       
        bl.disabled = false;
        return false;
    }

    console.log(radioBtnPay.value)

    if (radioBtnPay.value == "custom") {
      
        var customPrice = document.getElementById("the name of the price input")
    }

    bl.disabled = false;
    toastr.success("thank you for choosing ");

   
}


