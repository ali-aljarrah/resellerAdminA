function paySubmit(id) {
    var bl = document.getElementById(id);
    alert("Hello");
   

    const radioBtnPay = document.querySelectorAll("input[name=option2]:checked");
    
    alert("zainab is here");
    if (radioBtnPay.length <= 0) {
        toastr.error("no no");
       
        bl.disabled = false;
        return false;
    }

    bl.disabled = false;
    toastr.success("all is done");

    alert("if i have mistake i'll kill you");
}