<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sms-scheduled.aspx.cs" Inherits="resellerAdminA.sms_scheduled" %>


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
            <uc1:menuTop runat="server" ID="menuTop1" parentPageText="Dashboard" childPageText="SMS Scheduled" />
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
                                    <div class="col-md-12">

                                        <!--begin::Col-->
                                        <div class=" pb-5">
                                            <div class="card shadow-xs p-8 d-flex mb-5">
                                            <div class="page-title gap-1 d-flex justify-content-between align-items-start">
                                                <div>
                                                   <!--begin::Title-->
                                                    <div class="d-flex justify-content-start align-items-center mb-1">
                                                        <h2 class="page-heading text-dark fw-bold mb-3 me-3">Sent SMS Scheduled Log</h2>
                                                    </div>
                                                    <p class="fs-16 color-neutral-grey pb-5">
                                                       This list is a temporary list of reports for precisely 24 hours. This ensures swift access to recent data while maintaining data privacy and security.
					                                </p>
	                                               </div>
                                            </div>
                                            <div class="card-body border-0 pt-5 ps-0 pr-0">
                                                <!--begin::Card body-->
                                                <div class="pb-4 mt-0">
                                                    <div class="table-responsive">
                                                        <table id="sent-sms-report" class="table custom-table table-bordered table-row-gray-300 gy-5 datatable">
                                                            <thead>
                                                                <tr class="fs-14 fw-600 dark-color">
                                                                    <th class="white-color">Recipient</th>
                                                                    <th class="white-color">Message Content</th>
                                                                    <th class="white-color">Date & Time</th>
                                                                    <th class="white-color">Status</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>60146255666</td>
                                                                    <td class="mw-100px">
                                                                        <div class="overflow-clip-ellipsis" data-bs-toggle="tooltip" data-bs-placement="top" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.">
                                                                            Lorem ipsum dolor sit amet, 
                                                                        </div>
                                                                    </td>
                                                                    <td>22/08/2023 03:09:36</td>
                                                                    <td class="text-success fw-600">Sent</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>0147775666</td>
                                                                    <td class="mw-100px">
                                                                        <div class="overflow-clip-ellipsis" data-bs-toggle="tooltip" data-bs-placement="top" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.">
                                                                            Lorem ipsum dolor sit amet, 
                                                                        </div>
                                                                    </td>
                                                                    <td>22/08/2023 03:09:36</td>
                                                                    <td class="text-success fw-600">Sent</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>0136255666</td>
                                                                    <td class="mw-100px">
                                                                        <div class="overflow-clip-ellipsis" data-bs-toggle="tooltip" data-bs-placement="top" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis.">
                                                                            Lorem ipsum dolor sit amet, 
                                                                        </div>
                                                                    </td>
                                                                    <td>22/08/2023 03:09:36</td>
                                                                    <td class="text-primary fw-600">Upcoming</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <!--end::Card body-->

                                                <!--end::Card widget 4-->
                                            </div>
                                        </div>
                                        <!--end::Row-->
                                    </div>
                                    <!--end::Content container-->
                                </div>
                                <!--end::Content-->
                            </div>
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
        <uc1:footerLinks runat="server" ID="footerLinks" />
         <script src="/assets/js/sms-scheduled.js"></script>
</body>
<!--end::Body-->
</html>


