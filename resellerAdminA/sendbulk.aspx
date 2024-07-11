﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="resellerAdminA.index" %>


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
                <uc1:menuTop runat="server" id="menuTop1" parentPageText="Send Bulk" childPageText="Dashboard"/>
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
									 <!--begin::Row-->
                                <div class="row g-5 g-xl-10">
                                    <!--begin::Col-->
                                    <div class="col-xl-8 mb-xl-10">
                                        <!--begin::List widget 10-->
                                        <div class="card card-flush shadow-xs">
                                            <!--begin::Header-->
                                            <div class="card-header d-block pt-7">
                                                <!--begin::Title-->
                                                <h3 class="card-title card-label fs-20 fw-bold color-black-1">
                                                Send Bulk SMS
                                                </h3>
                                                <!--end::Title-->
                                                <p class="color-neutral-grey mt-1 fs-14">
                                                Send a large volume of text messages to multiple recipients simultaneously. Whether it's for marketing campaigns, announcements, reminders, or any other purpose.
                                                </p>
                                            </div>
                                            <!--end::Header-->
                                            <!--begin::Body-->
                                            <div class="card-body">
                                                <form action="#" id="frmSendSingleSms" name="frmSendSingleSms" novalidate="novalidate">
														<div class="mb-8">
															<label for="txtSender" class="form-label fs-14 color-black-1 required">Sender name</label>
															<input type="text" class="form-control form-custom-input" name="txtSender" id="txtSender" placeholder="Sender name" data-bs-toggle="tooltip" data-bs-placement="top" title="Please Enter Sender For Message,Max length for numeric:18 and alphanumeric:11"/>
														</div>
														<div class="mb-8">
															<label for="cmbMessageType" class="form-label fs-14 color-black-1 required">SMS type</label>
															<select class="form-select form-custom-select" onchange="javascript:setMessageLength();" id="cmbMessageType" name="cmbMessageType" data-bs-toggle="tooltip" data-bs-placement="top" title="Please Select Message Type">
																<option value="">Please select one</option>
																<option value="0">Text</option>
																<option value="2">Arabic</option>
																<option value="9">Unicode</option>
															</select>
														</div>
														<div class="mb-8">
															<label for="selected-files" class="form-label fs-14 color-black-1">Selected files</label>
															<textarea name="selected-files" rows="4" cols="" id="selected-files" placeholder="Selected file's names." class="form-control form-custom-textarea" size="30" maxlength="765"  data-bs-toggle="tooltip" data-bs-placement="top" title="This block will show the selected files"></textarea>
															<div class="fs-12 text-gradients-blue">
																<span id="files-count">0</span> files : <span id="number-count">0</span> numbers
															</div>
														</div>
														<div class="mb-8">
															<div class="d-flex justify-content-between align-items-center">
                                                                <label for="txtMessage" class="form-label fs-14 color-black-1 required">Message</label>
																<div class="d-flex justify-content-end align-items-end mb-2">
																	<div class="me-3">
																		<div class="cursor-pointer" data-bs-toggle="tooltip" data-bs-placement="top" title="Personalized & Elevate your content's appeal with the power of dynamic variables sourced directly from your Excel file.">
																			<div data-kt-menu-trigger="{default: 'click', lg: 'click'}" data-kt-menu-overflow="true" data-kt-menu-placement="bottom-end">
																				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																					<path d="M12 2.25C10.0716 2.25 8.18657 2.82183 6.58319 3.89317C4.97982 4.96451 3.73013 6.48726 2.99218 8.26884C2.25422 10.0504 2.06114 12.0108 2.43735 13.9021C2.81355 15.7934 3.74215 17.5307 5.10571 18.8943C6.46928 20.2579 8.20656 21.1865 10.0979 21.5627C11.9892 21.9389 13.9496 21.7458 15.7312 21.0078C17.5127 20.2699 19.0355 19.0202 20.1068 17.4168C21.1782 15.8134 21.75 13.9284 21.75 12C21.7473 9.41498 20.7192 6.93661 18.8913 5.10872C17.0634 3.28084 14.585 2.25273 12 2.25ZM12 20.25C10.3683 20.25 8.77326 19.7661 7.41655 18.8596C6.05984 17.9531 5.00242 16.6646 4.378 15.1571C3.75358 13.6496 3.5902 11.9908 3.90853 10.3905C4.22685 8.79016 5.01259 7.32015 6.16637 6.16637C7.32016 5.01259 8.79017 4.22685 10.3905 3.90852C11.9909 3.59019 13.6497 3.75357 15.1571 4.37799C16.6646 5.00242 17.9531 6.05984 18.8596 7.41655C19.7661 8.77325 20.25 10.3683 20.25 12C20.2475 14.1873 19.3775 16.2843 17.8309 17.8309C16.2843 19.3775 14.1873 20.2475 12 20.25ZM7.5 10.125C7.5 9.9025 7.56598 9.68499 7.6896 9.49998C7.81322 9.31498 7.98892 9.17078 8.19449 9.08564C8.40005 9.00049 8.62625 8.97821 8.84448 9.02162C9.06271 9.06502 9.26317 9.17217 9.4205 9.3295C9.57783 9.48684 9.68498 9.68729 9.72839 9.90552C9.7718 10.1238 9.74952 10.35 9.66437 10.5555C9.57922 10.7611 9.43503 10.9368 9.25002 11.0604C9.06502 11.184 8.84751 11.25 8.625 11.25C8.32664 11.25 8.04049 11.1315 7.82951 10.9205C7.61853 10.7095 7.5 10.4234 7.5 10.125ZM17.25 10.125C17.25 10.3239 17.171 10.5147 17.0303 10.6553C16.8897 10.796 16.6989 10.875 16.5 10.875H14.25C14.0511 10.875 13.8603 10.796 13.7197 10.6553C13.579 10.5147 13.5 10.3239 13.5 10.125C13.5 9.92609 13.579 9.73532 13.7197 9.59467C13.8603 9.45402 14.0511 9.375 14.25 9.375H16.5C16.6989 9.375 16.8897 9.45402 17.0303 9.59467C17.171 9.73532 17.25 9.92609 17.25 10.125ZM16.3988 14.625C15.4341 16.2928 13.8309 17.25 12 17.25C10.1691 17.25 8.56594 16.2937 7.60032 14.625C7.55107 14.5397 7.51911 14.4455 7.50626 14.3478C7.49342 14.2502 7.49993 14.1509 7.52544 14.0558C7.55095 13.9606 7.59495 13.8714 7.65493 13.7933C7.7149 13.7151 7.78969 13.6496 7.875 13.6003C7.96032 13.5511 8.0545 13.5191 8.15217 13.5063C8.24984 13.4934 8.34909 13.4999 8.44424 13.5254C8.53939 13.5509 8.62858 13.5949 8.70673 13.6549C8.78488 13.7149 8.85045 13.7897 8.89969 13.875C9.59907 15.0853 10.6997 15.75 12 15.75C13.3003 15.75 14.4009 15.0844 15.1013 13.875C15.1481 13.7854 15.2127 13.7062 15.291 13.6421C15.3693 13.5781 15.4597 13.5305 15.5569 13.5023C15.654 13.4742 15.7558 13.4659 15.8563 13.4781C15.9567 13.4903 16.0536 13.5227 16.1412 13.5733C16.2287 13.6239 16.3052 13.6917 16.3658 13.7727C16.4265 13.8536 16.4702 13.946 16.4943 14.0442C16.5183 14.1425 16.5223 14.2446 16.5059 14.3444C16.4895 14.4442 16.453 14.5396 16.3988 14.625Z" fill="#121212"/>
																				</svg>
																			</div>
																			<div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-800 menu-state-bg menu-state-color py-3 w-175px" data-kt-menu="true">
																				<!--begin::Menu item-->
																				<div class="menu-item px-2">
																					<a id="var_1" href="#" class="fs-14 color-black-1 menu-link">[var1]</a>
																				</div>
																				<!--end::Menu item-->
																				<!--begin::Menu item-->
																				<div class="menu-item px-2">
																					<a id="var_2" href="#" class="fs-14 color-black-1 menu-link">[var2]</a>
																				</div>
																				<!--end::Menu item-->
																				<!--begin::Menu item-->
																				<div class="menu-item px-2">
																					<a id="var_3" href="#" class="fs-14 color-black-1 menu-link">[var3]</a>
																				</div>
																				<!--end::Menu item-->
																			</div>
																		</div>
																	</div>
																	<div class="d-flex justify-content-end align-items-center">
																		<a id="chooseTemplateBtn" href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Choose template">
																			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
																				<path d="M19.5 4.5V7.5H4.5V4.5H19.5ZM19.5 3H4.5C4.10218 3 3.72064 3.15804 3.43934 3.43934C3.15804 3.72064 3 4.10218 3 4.5V7.5C3 7.89782 3.15804 8.27936 3.43934 8.56066C3.72064 8.84196 4.10218 9 4.5 9H19.5C19.8978 9 20.2794 8.84196 20.5607 8.56066C20.842 8.27936 21 7.89782 21 7.5V4.5C21 4.10218 20.842 3.72064 20.5607 3.43934C20.2794 3.15804 19.8978 3 19.5 3ZM7.5 12V19.5H4.5V12H7.5ZM7.5 10.5H4.5C4.10218 10.5 3.72064 10.658 3.43934 10.9393C3.15804 11.2206 3 11.6022 3 12V19.5C3 19.8978 3.15804 20.2794 3.43934 20.5607C3.72064 20.842 4.10218 21 4.5 21H7.5C7.89782 21 8.27936 20.842 8.56066 20.5607C8.84196 20.2794 9 19.8978 9 19.5V12C9 11.6022 8.84196 11.2206 8.56066 10.9393C8.27936 10.658 7.89782 10.5 7.5 10.5ZM19.5 12V19.5H12V12H19.5ZM19.5 10.5H12C11.6022 10.5 11.2206 10.658 10.9393 10.9393C10.658 11.2206 10.5 11.6022 10.5 12V19.5C10.5 19.8978 10.658 20.2794 10.9393 20.5607C11.2206 20.842 11.6022 21 12 21H19.5C19.8978 21 20.2794 20.842 20.5607 20.5607C20.842 20.2794 21 19.8978 21 19.5V12C21 11.6022 20.842 11.2206 20.5607 10.9393C20.2794 10.658 19.8978 10.5 19.5 10.5Z" fill="#121212"/>
																			</svg>
																		</a>
																	</div>
																	
																</div>
                                                            </div>
															<input type="hidden" name="codePoints" value="" onblur="document.frmSendSingleSms.txtMessage.value = convertCP2Char( document.frmSendSingleSms.codePoints.value );&#10;document.frmSendSingleSms.UTF16.value = convertCP2UTF16( document.frmSendSingleSms.codePoints.value );&#10;return false;" readonly="readonly"/>                                                    
															<input type="hidden" name="UTF16" value="" onblur="document.frmSendSingleSms.codePoints.value = convertUTF162CP( document.frmSendSingleSms.UTF16.value );&#10;return false;" rows="3" cols="50" />  
															<textarea name="txtMessage" rows="4" cols="" id="txtMessage" placeholder="Write message here..." class="form-control form-custom-textarea" size="30" maxlength="766" onkeypress="javascript:setCounter()" onblur="javascript:setCounter(); document.frmSendSingleSms.codePoints.value = convertChar2CP(document.frmSendSingleSms.txtMessage.value);
															document.frmSendSingleSms.UTF16.value = convertCP2UTF16( document.frmSendSingleSms.codePoints.value );
															return false;" onclick="javascript:setCounter();document.frmSendSingleSms.codePoints.value = convertChar2CP(document.frmSendSingleSms.txtMessage.value);
															document.frmSendSingleSms.UTF16.value = convertCP2UTF16( document.frmSendSingleSms.codePoints.value );
															return false;" onkeyup="javascript:setCounter(); document.frmSendSingleSms.codePoints.value = convertChar2CP(document.frmSendSingleSms.txtMessage.value);
															document.frmSendSingleSms.UTF16.value = convertCP2UTF16( document.frmSendSingleSms.codePoints.value );
															return false;" spellcheck="false"></textarea>
															<div class="fs-12 text-gradients-blue">
																<input type="text" id="txtcount" name="txtcount" value="0 : 1 SMS Parts" readonly="readonly" class="fs-12 text-gradients-blue text-start border-0">
																<input type="hidden" name="hiddcount" value="160" id="hiddcount">
																<input type="hidden" name="txtMessageCount" value="1">
															</div>
														</div>
														<div class="d-flex justify-content-start align-items-center">
															<button type="submit" class="btn btn-grad-1 py-4 px-9 rounded-3" id="btnSubmit" name="btnSubmit">
																<span class="indicator-label">Send Bulk</span>
																<span class="indicator-progress">
																	<span class="spinner-border text-white" role="status">
																		<span class="visually-hidden">Loading...</span>
																	</span>
																</span>
															</button>
															<div>
																<a class="btn btn-outline-dark btn-bordered py-4 px-8 rounded-2 ms-8" href="/sentreport">View report</a>
															</div>
														</div>
													</form>
                                            </div>
                                            <!--end: Card Body-->
                                        </div>
                                        <!--end::List widget 10-->
                                    </div>
                                    <!--end::Col-->
                                    <!--begin::Col-->
                                    <div class="col-xl-4">
                                        <!--begin::List widget 10-->
                                        <div class="card card-flush shadow-xs mb-10">
                                            <!--begin::Header-->
                                            <div class="card-header d-block pt-7">
                                                <!--begin::Title-->
                                                <h3 class="card-title card-label fs-20 fw-bold color-black-1">
                                                Summary
                                                </h3>
                                                <p class="color-neutral-grey mt-1 fs-14 mb-1">
                                                Please review the information below to ensure everything is accurate before proceeding with the bulk SMS sending.
                                                </p>
                                            </div>
                                            <!--end::Header-->
                                            <!--begin::Body-->
                                            <div class="card-body py-1">
                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <tbody>
                                                            <tr>
                                                                <td class="color-black-1 fs-14 fw-600">Total messages</td>
                                                                <td class="color-black-1 fs-14 fw-600" id="total_message">61k</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="color-black-1 fs-14 fw-600">Total files</td>
                                                                <td class="color-black-1 fs-14 fw-600" id="total_files">2</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="color-black-1 fs-14 fw-600">Total recipients</td>
                                                                <td class="color-black-1 fs-14 fw-600" id="total_recipients">61k</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="color-black-1 fs-14 fw-600">Total message parts</td>
                                                                <td class="color-black-1 fs-14 fw-600" id="total_message_part">1</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <!--end: Card Body-->
                                        </div>
                                        <!--end::List widget 10-->
                                        <!--begin::List widget 10-->
                                        <div class="card card-flush shadow-xs">
                                            <!--begin::Header-->
                                            <div class="card-header d-block pt-7">
                                                <!--begin::Title-->
                                                <h3 class="card-title card-label fs-20 fw-bold color-black-1">
                                                Files List <span class="fs-12 ms-2 color-light-blue fw-500 bg-light-blue rounded-2 px-2 py-1">8 available</span>
                                                </h3>
                                                <p class="color-neutral-grey mt-1 fs-14 mb-1">
                                                Please select a file to send SMS in bulk (Limit: 10 Files).
                                                </p>
                                            </div>
                                            <!--end::Header-->
                                            <!--begin::Body-->
                                            <div class="card-body py-1">
                                                <div class="files-scroll">
                                                    <!--begin::Accordion-->
                                                    <div class="accordion accordion-icon-toggle" id="file_list_accordion">
                                                        <!--begin::Item-->
                                                        <div class="mb-1">
                                                            <!--begin::Header
                                                            <div class="accordion-header py-2 d-flex align-items-center" data-bs-toggle="collapse" data-bs-target="#file_list_accordion_item_1">
                                                                <span class="accordion-icon">
                                                                    <i class="ki-duotone ki-arrow-right fs-4"><span class="path1"></span><span class="path2"></span></i>
                                                                </span>
                                                                <h3 class="fs-14 fw-400 color-black-1 mb-0 line-h-25 ms-5">u41mali.jarr023</h3>
                                                            </div>-->
                                                            <!--end::Header-->

                                                            <!--begin::Body-->
                                                            <div id="file_list_accordion_item_1" class="collapse show" data-bs-parent="#file_list_accordion">
                                                                <ul class="list-unstyled ps-10 pt-4">
                                                                    <li class="mb-5">
                                                                        <div class="form-check form-check-custom form-check-solid form-check-sm">
                                                                            <input class="form-check-input" type="checkbox" value="|03|Easy Send SMS HLR Statistics.txt" id="file-1" name="file-list-checkbox"/>
                                                                            <label class="form-check-label fs-14 color-black-1" for="file-1">
                                                                                <span class="fs-12 color-green fw-500 bg-green px-4 py-1">1000</span>
                                                                                Area 51.txt
                                                                            </label>
                                                                        </div>
                                                                    </li>
                                                                    <li class="mb-5">
                                                                        <div class="form-check form-check-custom form-check-solid form-check-sm">
                                                                            <input class="form-check-input" type="checkbox" value="|489|exptest.txt" id="file-2" name="file-list-checkbox"/>
                                                                            <label class="form-check-label fs-14 color-black-1" for="file-2">
                                                                                <span class="fs-12 color-green fw-500 bg-green px-3 py-1">60k</span>
                                                                                Chicago.txt
                                                                            </label>
                                                                        </div>
                                                                    </li>
                                                                    <li class="mb-5">
                                                                        <div class="form-check form-check-custom form-check-solid form-check-sm">
                                                                            <input class="form-check-input" type="checkbox" value="|88|exptest.txt" id="file-3" name="file-list-checkbox"/>
                                                                            <label class="form-check-label fs-14 color-black-1" for="file-3">
                                                                                <span class="fs-12 color-green fw-500 bg-green px-3 py-1">60k</span>
                                                                                California.txt
                                                                            </label>
                                                                        </div>
                                                                    </li>
                                                                    <li class="mb-5">
                                                                        <div class="form-check form-check-custom form-check-solid form-check-sm">
                                                                            <input class="form-check-input" type="checkbox" value="|78|exptest.txt" id="file-4" name="file-list-checkbox"/>
                                                                            <label class="form-check-label fs-14 color-black-1" for="file-4">
                                                                                <span class="fs-12 color-green fw-500 bg-green px-3 py-1">50k</span>
                                                                                Florida.txt
                                                                            </label>
                                                                        </div>
                                                                    </li>
                                                                    <li class="mb-5">
                                                                        <div class="form-check form-check-custom form-check-solid form-check-sm">
                                                                            <input class="form-check-input" type="checkbox" value="|78|exptest.txt" id="file-4" name="file-list-checkbox"/>
                                                                            <label class="form-check-label fs-14 color-black-1" for="file-4">
                                                                                <span class="fs-12 color-green fw-500 bg-green px-3 py-1">45k</span>
                                                                                Ohio.txt
                                                                            </label>
                                                                        </div>
                                                                    </li>
                                                                    <li class="mb-5">
                                                                        <div class="form-check form-check-custom form-check-solid form-check-sm">
                                                                            <input class="form-check-input" type="checkbox" value="|78|exptest.txt" id="file-4" name="file-list-checkbox"/>
                                                                            <label class="form-check-label fs-14 color-black-1" for="file-4">
                                                                                <span class="fs-12 color-green fw-500 bg-green px-3 py-1">10k</span>
                                                                                Texas.txt
                                                                            </label>
                                                                        </div>
                                                                    </li>
                                                                    <li class="mb-5">
                                                                        <div class="form-check form-check-custom form-check-solid form-check-sm">
                                                                            <input class="form-check-input" type="checkbox" value="|78|exptest.txt" id="file-4" name="file-list-checkbox"/>
                                                                            <label class="form-check-label fs-14 color-black-1" for="file-4">
                                                                                <span class="fs-12 color-green fw-500 bg-green px-3 py-1">59k</span>
                                                                                Netherland.txt
                                                                            </label>
                                                                        </div>
                                                                    </li>
                                                                    <li class="mb-5">
                                                                        <div class="form-check form-check-custom form-check-solid form-check-sm">
                                                                            <input class="form-check-input" type="checkbox" value="|78|exptest.txt" id="file-4" name="file-list-checkbox"/>
                                                                            <label class="form-check-label fs-14 color-black-1" for="file-4">
                                                                                <span class="fs-12 color-green fw-500 bg-green px-3 py-1">420</span>
                                                                                Earth.txt
                                                                            </label>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                                <button type="upload" class="btn btn-grad-1 py-4 px-9 rounded-3 w-100 mb-5" id="btnUpload" name="btnUpload">
				                                                      <span class="indicator-label">Upload List</span>
				                                                      <span class="indicator-progress">
								                                         <span class="spinner-border text-white" role="status">
												                             <span class="visually-hidden">Loading...</span>
								                                          </span>
				                                                     </span>
                                                                </button>
                                                            </div>
                                                            <!--end::Body-->
                                                        </div>
                                                        <!--end::Item-->
                                                    </div>
                                                    <!--end::Accordion-->
                                                </div>
                                            </div>
                                            <!--end: Card Body-->
                                        </div>
                                        <!--end::List widget 10-->
                                    </div>
                                    <!--end::Col-->
                                </div>
                                <!--end::Row-->
								     <!--end::Content container-->
							     </div>
							    <!--end::Content-->
						     </div>
						    <!--end::Content wrapper-->
						    <!--begin::Footer-->
							<uc1:footer runat="server" id="footer" />
						    <!--end::Footer-->
					   </div>
					    <!--end:::Main-->
				   </div>
				   <!--end::Wrapper-->
			    </div>
			  <!--end::Page-->
		    </div>
		   <!--end::App-->
       </div>
        <!-- Choose template modal -->
    <div class="modal fade" tabindex="-1" id="chooseTemplate">
        <div class="modal-dialog modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header py-3">
                    <h3 class="modal-title primary-color fs-16 fw-500">Choose Message Template</h3>
                    <!--begin::Close-->
                    <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                        <span class="svg-icon svg-icon-1">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor"></rect>
                                <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor"></rect>
                            </svg>
                        </span>
                    </div>
                    <!--end::Close-->
                </div>

                <div class="modal-body">
                    <div class="table-responsive">
                        <table id="templates-table" class="table dashed-bottom-table gy-6">
                            <tbody>
                                
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="modal-footer justify-content-start">
                    <button type="button" class="btn btn-grad-1 py-3 px-8 rounded-3" id="chooseTemplateSubmitBtn">
                        <span class="indicator-label">Confirm</span>
                        <span class="indicator-progress">
                            <span class="spinner-border text-white" role="status">
                                <span class="visually-hidden">Loading...</span>
                            </span>
                        </span>
                    </button>
                    <button type="button" class="btn btn-outline-dark btn-bordered py-3 px-8 rounded-3" data-bs-dismiss="modal">Cancel</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Save template modal -->
    <div class="modal fade" tabindex="-1" id="saveTemplate">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header py-3">
                    <h3 class="modal-title primary-color fs-16 fw-500">Save template</h3>
                    <!--begin::Close-->
                    <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                        <span class="svg-icon svg-icon-1">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <rect opacity="0.5" x="6" y="17.3137" width="16" height="2" rx="1" transform="rotate(-45 6 17.3137)" fill="currentColor"></rect>
                                <rect x="7.41422" y="6" width="16" height="2" rx="1" transform="rotate(45 7.41422 6)" fill="currentColor"></rect>
                            </svg>
                        </span>
                    </div>
                    <!--end::Close-->
                </div>

                <div class="modal-body">
                    <div class="mb-8 templateNewName" style="">
                        <label for="templateName" class="form-label fs-14 color-black-1 required">Template name</label>
                        <input type="text" class="form-control form-custom-input" name="templateName" id="templateName" placeholder="Type Template Name" data-bs-toggle="tooltip" data-bs-placement="top" aria-label="New template name" data-bs-original-title="New template name" data-kt-initialized="1" fdprocessedid="nnyci4">
                    </div>
                </div>

                <div class="modal-footer justify-content-start">
                    <button type="button" class="btn btn-grad-1 py-4 px-8 rounded-3" id="saveTemplateSubmitBtn">
                        <span class="indicator-label">Select</span>
                        <span class="indicator-progress">
                            <span class="spinner-border text-white" role="status">
                                <span class="visually-hidden">Loading...</span>
                            </span>
                        </span>
                    </button>
                    <button type="button" class="btn btn-outline-dark btn-bordered py-4 px-8 rounded-3" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

			<uc1:footerLinks runat="server" id="footerLinks" />
             <script src="/assets/js/sendbulk.js" defer></script>
	</body>
	<!--end::Body-->
</html>

