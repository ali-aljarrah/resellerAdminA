﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="send-email.aspx.cs" Inherits="resellerAdminA.send_email" %>


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
    <form action="/send-email.aspx" method="post" runat="server">
        <uc1:loader runat="server" ID="loader" />
        <!--begin::Theme mode setup on page load-->
        <script>
            var defaultThemeMode = "light"; var themeMode; if (document.documentElement) { if (document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if (localStorage.getItem("data-bs-theme") !== null) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }
        </script>
        <!--end::Theme mode setup on page load-->
        <!--begin::App-->
        <div class="d-flex flex-column flex-root app-root" id="kt_app_root">
            <!--begin::Page-->
            <div class="app-page flex-column flex-column-fluid" id="kt_app_page">
                <!--begin::Header-->
                <uc1:menuTop runat="server" ID="menuTop1" parentPageText="Dashboard" childPageText="Send Email" />
                <!--end::Header-->
                <!--begin::Wrapper-->
                <div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
                    <!--begin::Sidebar-->
                    <uc1:sideBar runat="server" ID="sideBar" />
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
                                    <div class="row gy-5 g-xl-10">
                                        <!--begin::Col-->
                                        <div class="col-md-12 mb-md-0 mb-5 mt-5">
                                            <!--begin::Accordion-->
                                            <div class="card card-flush shadow-xs p-8 border-0">
                                                <!--begin::Item-->
                                                <div class="mb-5">
                                                    <div class="d-flex justify-content-between align-items-start flex-column flex-md-row">
                                                        <!--begin::Page title-->
                                                        <div class="page-title gap-1 d-flex justify-content-between align-items-start mb-5 mb-md-0">
                                                            <div>
                                                                <!--begin::Title-->
                                                                <div class="d-flex pt-3 justify-content-start align-items-center mb-1">
                                                                    <h1 class="page-heading text-dark fw-bold m-0 me-3">Send Email</h1>
                                                                </div>
                                                                <p class="fs-14 pt-3 gray">
                                                                    Use this tool to send email to a single customer or to all your customer. Your email will be processed in background to save you time.
                                                                </p>
                                                                <!--end::Title-->
                                                            </div>
                                                        </div>
                                                        <!--end::Page title-->
                                                        <!--begin::Header-->
                                                        <button type="button" class="btn btn-primary btn-grad" id="btn-modal-popup" data-bs-toggle="modal" data-bs-target="#sendEmailModal">
                                                            New Message
                                                        </button>
                                                        <!--end::Header-->
                                                    </div>
                                                </div>
                                                <!--end::Item-->
                                                <!--end::Accordion-->
                                                <!--begin::Card widget 4-->
                                                <div class="card-body border-0 ps-0 pr-0">
                                                    <!--begin::Card body-->
                                                    <div class="pb-4 mt-0 pt-5">
                                                        <div class="table-responsive">
                                                            <table id="sent-sms-report" class="table custom-table table-bordered table-row-gray-300 gy-5 datatable">
                                                                <thead>
                                                                    <tr class="fs-14 fw-600">
                                                                        <th class="white-color">Recipient</th>
                                                                        <th class="white-color">Subject</th>
                                                                        <th class="white-color">Date</th>
                                                                        <th class="white-color">Status</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>All Registered Customers</td>
                                                                        <td class="mw-100px">
                                                                            <div class="overflow-clip-ellipsis" data-bs-toggle="tooltip" data-bs-placement="top" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.">
                                                                                Lorem ipsum dolor sit amet, consectetur adipi ..																	
                                                                            </div>
                                                                        </td>
                                                                        <td>22/08/2023</td>
                                                                        <td class="text-success">Sent</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>All Unverified Customers</td>
                                                                        <td class="mw-100px">
                                                                            <div class="overflow-clip-ellipsis" data-bs-toggle="tooltip" data-bs-placement="top" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.">
                                                                                Lorem ipsum dolor sit amet, consectetur adipi ..																	
                                                                            </div>
                                                                        </td>
                                                                        <td>22/08/2023</td>
                                                                        <td class="text-warning">Queued</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Customers With Zero Balance</td>
                                                                        <td class="mw-100px">
                                                                            <div class="overflow-clip-ellipsis" data-bs-toggle="tooltip" data-bs-placement="top" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.">
                                                                                Lorem ipsum dolor sit amet, consectetur adipi ..																	
                                                                            </div>
                                                                        </td>
                                                                        <td>22/08/2023</td>
                                                                        <td class="text-warning">Queued</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <!--end::Card body-->
                                                </div>
                                                <!--end::Card widget 4-->
                                            </div>
                                        </div>
                                        <!--end::Col-->
                                        <!--end::Content container-->
                                    </div>
                                    <!--end::Content-->
                                </div>
                                <!--end::Content wrapper-->
                                <!--begin::Footer-->
                                <uc1:footer runat="server" ID="footer" />
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
            <!--modal add user popup-->
            <div class="modal fade" tabindex="-1" id="sendEmailModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title">Add New Message</h3>

                            <!--begin::Close-->
                            <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal" aria-label="Close">
                                <i class="ki-duotone ki-cross fs-1"><span class="path1"></span><span class="path2"></span></i>
                            </div>
                            <!--end::Close-->
                        </div>
                        <!--begin::Body-->

                        <div class="modal-body">
                            <div class="row my-4 p-8">
                                <div class="col-lg-12">
                                    <div class="mb-5">
                                        <label for="emailRecipient" class="form-label fs-14 dark-color required">Email recipient</label>
                                        <select class="form-select form-custom-select mt-3 p-2" name="emailRecipient" id="emailRecipient" runat="server">
                                            <option value="" selected>Select...</option>
                                            <option value="all-registered-customers">All Registered Customers</option>
                                            <option value="all-unverified-customers">All Unverified Customers</option>
                                            <option value="customers-with-zero-balance">Customers With Zero Balance</option>
                                        </select>
                                    </div>
                                    <div class="mb-5">
                                        <label for="emailMessage" class="form-label fs-14 dark-color required">Full name</label>
                                        <textarea class="form-control form-custom-textarea mt-3 p-2" name="emailMessage" id="emailMessage" runat="server" rows="5" placeholder="Enter the email's message here..."></textarea>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!--end::Body-->
                        <div class="modal-footer">
                            <asp:Button ID="sendEmailSubmitBtn" runat="server" Text="Send email"
                                CssClass="btn btn-primary btn-grad py-2 px-6 rounded-1"
                                OnClientClick="sendEmailSubmit('sendEmailSubmitBtn'); return false;" OnClick="sendEmailSubmitBtn_Click" />

                        </div>
                    </div>
                </div>
            </div>
            <uc1:footerLinks runat="server" ID="footerLinks" />
            <script src="/assets/js/send-email.js"></script>
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
    </form>
</body>
<!--end::Body-->
</html>

