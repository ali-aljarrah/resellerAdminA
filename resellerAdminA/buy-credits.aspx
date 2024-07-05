<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="resellerAdminA.index" %>


<%@ Register Src="~/Controls/head.ascx" TagPrefix="uc1" TagName="head" %>

<%@ Register Src="~/Controls/menuTop.ascx" TagPrefix="uc1" TagName="menuTop" %>
<%@ Register Src="~/Controls/sideBar.ascx" TagPrefix="uc1" TagName="sideBar" %>
<%@ Register Src="~/Controls/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/Controls/footerLinks.ascx" TagPrefix="uc1" TagName="footerLinks" %>
<%@ Register Src="~/Controls/loader.ascx" TagPrefix="uc1" TagName="loader" %>


<uc1:head runat="server" ID="head" />
	<title>Metronic - The World's #1 Selling Bootstrap Admin Template by KeenThemes</title>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_app_body" data-kt-app-header-fixed="true" data-kt-app-header-fixed-mobile="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" class="app-default">
		<uc1:loader runat="server" id="loader" />
		<!--begin::Theme mode setup on page load-->
		<script>
			var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }
		</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::App-->
		<div class="d-flex flex-column flex-root app-root" id="kt_app_root">
			<!--begin::Page-->
			<div class="app-page flex-column flex-column-fluid" id="kt_app_page">
				<!--begin::Header-->
                <uc1:menuTop runat="server" id="menuTop1" parentPageText="Home" childPageText="Dashboard"/>
				<!--end::Header-->
				<!--begin::Wrapper-->
				<div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
					<!--begin::Sidebar-->
					<uc1:sideBar runat="server" id="sideBar" />
					<!--end::Sidebar-->
					<!--begin::Main-->
					<div class="app-main flex-column flex-row-fluid" id="kt_app_main">
						<!--begin::Content wrapper-->
						<div class="d-flex flex-column flex-column-fluid">
							<!--begin::Content-->
							<div id="kt_app_content" class="app-content flex-column-fluid">
								<!--begin::Content container-->
								<div id="kt_app_content_container" class="app-container container-fluid">
                                    <div class="row d-flex">
                                           <div class="col-xl-9">
                                                <!--begin::Row-->
                                               <div class="card shadow-xs p-5 d-flex mb-5">
                                                 <div class="row mb-5" data-kt-buttons="true" data-kt-buttons-target=".form-check-image,.form-check-input">
                                            
                                                
                                                      <div class="col-xl-12">
                                                            <h1 class="fw-bold color-black-1 pb-5 mb-5">Choose Credit Amount</h1>
                                                      </div>
                                                      <div class="col-lg-3">
                                                            <label class="form-check-image w-100 active">
                                                                 <div class="form-check-wrapper p-5">
                                                                       <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                             <p class="color-black-1 fs-14 mb-0">100 Credits</p> 
                                                                           <input class="form-check-input" type="radio" value="100" name="payment" checked/>
                                                                       </div>
                                                                        <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$100</p>
                                                                 </div>
                                                           </label>
                                                        </div>
                                                          <!--begin::Col-->
                                                       <div class="col-lg-3">
                                                                    <label class="form-check-image w-100">
                                                                          <div class="form-check-wrapper p-5">
                                                                            <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                                  <p class="color-black-1 fs-14 mb-0">1,000 Credits</p> 
                                                                                <input class="form-check-input" type="radio" value="1000" name="payment"/>
                                                                            </div>
                                                                             <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$1,000</p>
                                                                        </div>
                                                                    </label>
                                                                </div>
                                                          <!--end::Col-->
                                                       <div class="col-lg-3">
                                                                   <label class="form-check-image w-100">
                                                                         <div class="form-check-wrapper p-5">
                                                                           <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                                 <p class="color-black-1 fs-14 mb-0">5,000 Credits</p> 
                                                                               <input class="form-check-input" type="radio" value="5000" name="payment"/>
                                                                           </div>
                                                                            <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$5,000</p>
                                                                       </div>
                                                                   </label>
                                                               </div>
                                                          <!--end::Col-->
                                                       <div class="col-lg-3">
                                                            <label class="form-check-image w-100">
                                                                  <div class="form-check-wrapper p-5">
                                                                    <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                          <p class="color-black-1 fs-14 mb-0">10,000 Credits</p> 
                                                                        <input class="form-check-input" type="radio" value="10000" name="payment"/>
                                                                    </div>
                                                                     <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$10,000</p>
                                                                </div>
                                                            </label>
                                                        </div>
                                                          <!--end::Col-->
                                                       <div class="col-lg-3">
                                                           <label class="form-check-image w-100">
                                                                 <div class="form-check-wrapper p-5">
                                                                   <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                         <p class="color-black-1 fs-14 mb-0">25,000 Credits</p> 
                                                                       <input class="form-check-input" type="radio" value="25000" name="payment"/>
                                                                   </div>
                                                                    <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$25,000</p>
                                                               </div>
                                                           </label>
                                                       </div>
                                                          <!--end::Col-->
                                                       <div class="col-lg-3">
                                                           <label class="form-check-image w-100">
                                                                 <div class="form-check-wrapper p-5">
                                                                   <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                         <p class="color-black-1 fs-14 mb-0">50,000 Credits</p> 
                                                                       <input class="form-check-input" type="radio" value="50000" name="payment"/>
                                                                   </div>
                                                                    <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$50,000</p>
                                                               </div>
                                                           </label>
                                                       </div>
                                                          <!--end::Col-->
                                                       <div class="col-lg-3">
                                                              <label class="form-check-image w-100">
                                                                    <div class="form-check-wrapper p-5">
                                                                      <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                            <p class="color-black-1 fs-14 mb-0">100,000</p> 
                                                                          <input class="form-check-input" type="radio" value="100000" name="payment"/>
                                                                      </div>
                                                                       <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$100,000</p>
                                                                  </div>
                                                              </label>
                                                          </div>
                                                          <!--end::Col-->
                                                       <div class="col-lg-3">
                                                              <label class="form-check-image w-100">
                                                                    <div class="form-check-wrapper p-5">
                                                                      <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                            <p class="color-black-1 fs-14 mb-0">250,000 Credits</p> 
                                                                          <input class="form-check-input" type="radio" value="250000" name="payment"/>
                                                                      </div>
                                                                       <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$250,000</p>
                                                                  </div>
                                                              </label>
                                                          </div>
                                                          <!--end::Col-->
                                                       <div class="col-lg-3">
                                                          <label class="form-check-image w-100">
                                                                <div class="form-check-wrapper p-5">
                                                                  <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                        <p class="color-black-1 fs-14 mb-0">500,000 Credits</p> 
                                                                      <input class="form-check-input" type="radio" value="500000" name="payment"/>
                                                                  </div>
                                                                   <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$500,000</p>
                                                              </div>
                                                          </label>
                                                      </div>
                                                          <!--end::Col-->
                                                       <div class="col-lg-3">
                                                                <label class="form-check-image w-100">
                                                                      <div class="form-check-wrapper p-5">
                                                                        <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                              <p class="color-black-1 fs-14 mb-0">1,000,000 Credits</p> 
                                                                            <input class="form-check-input" type="radio" value="1000000" name="payment"/>
                                                                        </div>
                                                                         <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$1,000,000</p>
                                                                    </div>
                                                                </label>
                                                            </div>
                                                          <!--end::Col-->
                                                       <div class="col-lg-3">
                                                             <label class="form-check-image w-100">
                                                                   <div class="form-check-wrapper p-5">
                                                                     <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                           <p class="color-black-1 fs-14 mb-0">1,500,000 Credits</p> 
                                                                         <input class="form-check-input" type="radio" value="1500000" name="payment"/>
                                                                     </div>
                                                                      <p class="color-black-1 fs-25 fw-bold mb-0 pt-3">$1,500,000</p>
                                                                 </div>
                                                             </label>
                                                         </div>
                                                          <!--end::Col-->
                                                       <div class="col-lg-3">
                                                             <label class="form-check-image w-100">
                                                                   <div class="form-check-wrapper p-5">
                                                                         <div class="form-check-label form-check-custom form-check-solid justify-content-between">
                                                                               <p class="color-black-1 fs-14 mb-0">Custom Credits</p> 
                                                                             <input class="form-check-input" type="radio" value="1" name="payment"/>
                                                                         </div>
                                                                         <input class="ms-3 mt-5 pt-2 pb-1 px-2 inputCss" type="text" id="name" name="name" required minlength="4" maxlength="8" size="15" placeholder="$" />
                                                                   </div>
                                                             </label>
                                                         </div>
                                                          <!--end::Col-->
                                                      <p class="fs-14 gray mt-5">
                                                          Choose the price package or set custom amount that suits your needs best. Select the dropdown to change payment method and click the button to pay securely and effortlessly.
                                                      </p>
                                                      <div class="pt-1 mb-5">
                                                          <button onclick="paySubmit('reloadBtn')" type="submit" id="reloadBtn" name="payment" value="Export" class="btn btn-primary btn-grad py-3 pe-5 rounded-1" fdprocessedid="3fvavj">
                                                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                      <path d="M20.4362 7.104C20.2635 6.91069 20.0715 6.73545 19.8632 6.581C19.9489 5.91113 19.8899 5.23069 19.6903 4.58554C19.4907 3.94038 19.1552 3.34551 18.7062 2.841C17.6222 1.619 15.7742 1 13.2132 1H7.00025C6.55116 1.00096 6.11705 1.16164 5.77556 1.45331C5.43406 1.74497 5.20745 2.14859 5.13625 2.592L2.54625 18.998C2.50959 19.2179 2.52136 19.4432 2.58072 19.6581C2.64007 19.873 2.7456 20.0724 2.88993 20.2424C3.03427 20.4123 3.21394 20.5487 3.41641 20.6421C3.61888 20.7355 3.83928 20.7836 4.06225 20.783H6.72625L6.64425 21.303C6.611 21.5124 6.62355 21.7265 6.68102 21.9306C6.73849 22.1347 6.83952 22.3239 6.97714 22.4852C7.11477 22.6465 7.28572 22.7761 7.47823 22.8649C7.67073 22.9538 7.88022 22.9999 8.09225 23H11.3272C11.7461 23.0031 12.1524 22.8569 12.4731 22.5875C12.7938 22.318 13.008 21.9431 13.0772 21.53L13.7182 17.499L13.7292 17.444H14.0282C18.0602 17.444 20.5782 15.451 21.3132 11.682C21.5374 10.9037 21.5748 10.0835 21.4224 9.28808C21.2701 8.49262 20.9322 7.74433 20.4362 7.104ZM7.84125 13.704L7.12725 18.239L7.04125 18.783H4.60525L7.09625 3H13.2132C15.1492 3 16.5312 3.404 17.2062 4.164C17.5245 4.5344 17.7465 4.97765 17.8524 5.45441C17.9582 5.93116 17.9448 6.42668 17.8132 6.897L17.7952 7.01C17.7832 7.086 17.7722 7.16 17.7512 7.256C17.5583 8.68471 16.8442 9.99174 15.7462 10.926C14.5136 11.7833 13.0279 12.2 11.5292 12.109H9.70625C9.25587 12.1074 8.81988 12.2675 8.47761 12.5602C8.13533 12.853 7.90952 13.2588 7.84125 13.704ZM19.3512 11.299C18.7992 14.127 17.1082 15.444 14.0282 15.444H13.5442C13.1249 15.441 12.7183 15.5877 12.3975 15.8577C12.0767 16.1277 11.8628 16.5033 11.7942 16.917L11.1442 20.991L8.71625 21L9.19425 17.966L9.80625 14.113H11.5252C11.6822 14.113 11.8202 14.09 11.9732 14.084C12.3322 14.072 12.6902 14.058 13.0262 14.016C13.2312 13.991 13.4192 13.944 13.6162 13.908C13.8892 13.858 14.1612 13.808 14.4172 13.737C14.6072 13.684 14.7852 13.615 14.9672 13.551C15.2052 13.466 15.4412 13.377 15.6642 13.272C15.8295 13.1927 15.9917 13.107 16.1502 13.015C16.3615 12.8954 16.5661 12.7646 16.7632 12.623C16.9052 12.521 17.0452 12.415 17.1782 12.303C17.367 12.14 17.5463 11.9664 17.7152 11.783C17.8282 11.663 17.9432 11.546 18.0482 11.416C18.2218 11.1947 18.3821 10.9633 18.5282 10.723C18.6042 10.601 18.6892 10.488 18.7602 10.36C18.9626 9.98907 19.1364 9.6033 19.2802 9.206C19.2892 9.182 19.3012 9.162 19.3102 9.138C19.3142 9.128 19.3202 9.118 19.3242 9.106C19.5224 9.82246 19.5323 10.578 19.3512 11.299Z" fill="white"/>
                                                                </svg>
                                                               <span class="fs-12 ps-1 pe-2"> PayPal</span>
                                                          </button>
                                                      </div>
                                                 </div>
                                             </div>
                                               <hr class="mt-8 pt-5" />
                                                   <!--begin::Page title-->
                                                <div class="pt-5 pb-5">
                                                        <div class="card shadow-xs p-5 d-flex mb-5">
                                                             <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                                 <div>
                                                                    <!--begin::Title-->
                                                                     <div class="d-flex justify-content-start align-items-center mb-1">
                                                                         <h2 class="page-heading text-dark fw-bold mb-3 me-3">Transactions History</h2>
                                                                     </div>
                                                                     <p class="fs-16 color-neutral-grey pb-5">
                                                                          See a complete list of all the transactions your customers have done here. You can view or approve their invoices here too.                                                                 <!--end::Title-->
                                                                 </div>
                                                             </div>
                                                              <!--begin::Card body-->
                                                              <div class="table-responsive">
                                                                 <table id="sent-sms-report" class="table custom-table table-row-gray-300 gy-5 datatable">
                                                                         <thead>
                                                                             <tr class="fs-14 fw-600">
                                                                                 <th class="white-color">Payment type</th>
                                                                                 <th class="white-color">Amount</th>
                                                                                 <th class="white-color">Date & Time</th>
                                                                             </tr>
                                                                         </thead>
                                                                         <tbody>
                                                                             <tr>
                                                                                 <td>-</td>
                                                                                 <td>-</td>
                                                                                 <td>-</td>
                                                                             </tr>
                                                                             <tr>
                                                                                 <td>-</td>
                                                                                 <td>-</td>
                                                                                 <td>-</td>
                                                                             </tr>
                                                                             <tr>
                                                                                 <td>-</td>
                                                                                 <td>-</td>
                                                                                 <td>-</td>
                                                                             </tr>
                                                                         </tbody>
                                                                     </table>
                                                              </div>
                                                         </div>
                                                         <!--end::Card body-->
                                                     </div>
                                                     <!--end::Card widget 4-->
                                           </div>
                                        
                                           <div class="col-xl-3 mb-md-0 mt-5 mt-md-0">
                                                <div class="card card-flush shadow-xs h-100 border-0">
                                                        <div class="custom-border-left h-100 mt-10 mt-md-0">
                                                            <div class="p-8">
                                                                <div>
                                                                    <div class="mb-6">
                                                                        <p class="fs-16 fw-600 dark-color mb-3">
                                                                        Terms & Conditions
                                                                        </p>
                                                                        <ul>
                                                                            <li class="fs-14 dark-color mb-4">
                                                                             All prices are stated in USD Dollar. We reserve the right to modify any advertised price at our discretion.                                                                        </li>
                                                                            <li class="fs-14 dark-color mb-4">
                                                                            Payment options include PayPal, major credit or debit cards, and cryptocurrency. If you do not have a PayPal account, you can easily sign up by visiting <a href="https://www.paypal.com/" target="_blank" rel="noopener noreferrer">PayPal's website.</a>
                                                                            </li>
                                                                            <li class="fs-14 dark-color mb-4">
                                                                            Account reloading typically occurs within 20 minutes to 1 hour after our sales team approves the transaction. In case of any delays, we will notify you promptly.
                                                                            </li>
                                                                            <li class="fs-14 dark-color mb-4">
                                                                            To maintain a safe and secure platform for all our customers, we may request identity verification. This verification process helps prevent fraudulent activities and ensures the security of your account.
                                                                            </li>
                                                                            <li class="fs-14 dark-color mb-4">
                                                                            As part of the ID verification process, we require your full name and supporting documents to verify your identity. Accounts that pass the ID verification process will be considered verified buyers after their first transaction.
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="mb-6">
                                                                        <p class="fs-16 fw-600 dark-color mb-3">
                                                                        CryptoCurrency
                                                                        </p>
                                                                        <ul>
                                                                            <li class="fs-14 dark-color mb-4">
                                                                            We accept major cryptocurrencies. If you wish to use a cryptocurrency not listed on our platform, kindly contact us, and we will provide you with the necessary wallet ID.
                                                                            </li>
                                                                        </ul>
                                                                        <div class="text-center mt-5">
                                                                            <img width="200" height="54" class="img-fluid" src="/assets/img/home/Frame 93.png" alt="Accepted payment methods">
                                                                        </div>
                                                                        <div class="text-center">
                                                                            <img width="290" height="75" class="img-fluid" src="/assets/img/home/Layer 1.svg" alt="Accepted payment methods">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                </div>
                                           </div>
                                    </div> 
								    <!--end::Content container-->
							    </div>
							    <!--end::Content-->
						    </div>
						<!--end::Content wrapper-->
						<!--begin::Footer-->
							<uc1:footer runat="server" id="footer" />
						<!--end::Footer-->
                        </div>
					</div>
					<!--end:::Main-->
				</div>
				<!--end::Wrapper-->
			</div>
			<!--end::Page-->
		</div>
		<!--end::App-->
    </div>
			<uc1:footerLinks runat="server" id="footerLinks" />
            <script src="/assets/js/buy-credits.js"></script>
	</body>
	<!--end::Body-->
</html>

