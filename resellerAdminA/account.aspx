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
                <uc1:menuTop runat="server" id="menuTop1" parentPageText="Dashboard" childPageText="Account"/>
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
								<div id="kt_app_content_container" class="app-container container-xxl">
									<!--begin::Row-->
                                    <div class="row g-5 g-xl-10 mb-xl-10 mt-0">
                                        <div class="col-md-12 mb-md-0 mb-5 mt-5">
                                             <!--begin::Details-->
                                             <div class="d-flex flex-wrap flex-sm-nowrap">
                                                <!--begin: Pic-->
                                                <div class="me-7 mb-4">
                                                    <div class="d-flex justify-content-center align-items-center w-150px h-150px bg-gray-200 rounded">
                                                        <svg width="100" height="100" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M6.28548 15.0861C7.34369 13.1814 9.35142 12 11.5304 12H12.4696C14.6486 12 16.6563 13.1814 17.7145 15.0861L19.3493 18.0287C20.0899 19.3618 19.1259 21 17.601 21H6.39903C4.87406 21 3.91012 19.3618 4.65071 18.0287L6.28548 15.0861Z" fill="currentColor"/>
                                                            <rect opacity="0.3" x="8" y="3" width="8" height="8" rx="4" fill="currentColor"/>
                                                        </svg>
                                                    </div>
                                                </div>
                                                <!--end::Pic-->
                                                <!--begin::Info-->
                                                <div class="flex-grow-1">
                                                    <!--begin::Title-->
                                                    <div class="d-flex justify-content-between align-items-start flex-wrap mb-2">
                                                        <!--begin::User-->
                                                        <div class="d-flex flex-column">
                                                            <!--begin::Name-->
                                                            <div class="d-flex align-items-center mb-2">
                                                                <span class="text-gray-900 text-hover-primary fs-2 fw-bold me-1">Adam Selvich</span>   
                                                                <!--begin::Menu-->
                                                                <div class="mx-4">
                                                                    <span class="badge badge-light-success">Active</span>
                                                                </div>
                                                                <!--end::Menu-->                                                          
                                                            </div>
                                                            <!--end::Name-->
                                                            <!--begin::Info-->
                                                            <div class="d-flex flex-wrap fw-semibold fs-6 mb-4 pe-2">
                                                                <span class="gray text-hover-primary me-2 mb-2">Administrator</span>
                                                                <span class="gray text-hover-primary me-2 mb-2">•</span>
                                                                <span class="gray text-hover-primary me-2 mb-2">adam.selvich@gmail.com</span>
                                                            </div>
                                                            <!--end::Info-->
                                                        </div>
                                                        <!--end::User-->
                                                    </div>
                                                    <!--end::Title-->
                                                    <!--begin::Stats-->
                                                    <div class="d-flex flex-wrap flex-stack">
                                                        <!--begin::Wrapper-->
                                                        <div class="d-flex flex-column flex-grow-1 pe-8">
                                                            <!--begin::Stats-->
                                                            <div class="d-flex flex-wrap">
                                                                <!--begin::Stat-->
                                                                <div class="shadow-xs rounded-2 min-w-125px py-2 px-4 me-6 mb-3">
                                                                    <!--begin::Label-->
                                                                    <div class="fs-12 text-gray-400 mb-2">Current Balance</div>
                                                                    <!--end::Label-->
                                                                    <!--begin::Number-->
                                                                    <div class="fs-2 fw-bold" data-kt-countup="true" data-kt-countup-value="0" data-kt-countup-prefix="$">0</div>
                                                                    <!--end::Number-->
                                                                </div>
                                                                <!--end::Stat-->
                                                                <!--begin::Stat-->
                                                                <div class="shadow-xs rounded-2 min-w-125px py-2 px-4 me-6 mb-3">
                                                                    <!--begin::Label-->
                                                                    <div class="fs-12 text-gray-400 mb-2">Last Recharge</div>
                                                                    <!--end::Label-->
                                                                    <!--begin::Number-->
                                                                    <div>
                                                                        <span class="fs-2 fw-bold" data-kt-countup="true" data-kt-countup-value="100" data-kt-countup-prefix="$">0</span><span class="fs-2 fw-bold">K</span>
                                                                    </div>
                                                                    <!--end::Number-->
                                                                </div>
                                                                <!--end::Stat-->
                                                                <!--begin::Stat-->
                                                                <div class="shadow-xs rounded-2 min-w-125px py-2 px-4 me-6 mb-3">
                                                                    <!--begin::Label-->
                                                                    <div class="fs-12 text-gray-400 mb-2">Total Recharge</div>
                                                                    <!--end::Label-->
                                                                    <!--begin::Number-->
                                                                    <div>
                                                                        <span class="fs-2 fw-bold" data-kt-countup="true" data-kt-countup-value="200" data-kt-countup-prefix="$">0</span><span class="fs-2 fw-bold">K</span>
                                                                    </div>
                                                                    <!--end::Number-->
                                                                </div>
                                                                <!--end::Stat-->
                                                                <!--begin::Stat-->
                                                                <div class="shadow-xs rounded-2 min-w-125px py-2 px-4 me-6 mb-3">
                                                                    <!--begin::Label-->
                                                                    <div class="fs-12 text-gray-400 mb-2">Credits Used</div>
                                                                    <!--end::Label-->
                                                                    <!--begin::Number-->
                                                                    <div>
                                                                        <span class="fs-2 fw-bold" data-kt-countup="true" data-kt-countup-value="100" data-kt-countup-prefix="$">0</span><span class="fs-2 fw-bold">K</span>
                                                                    </div>
                                                                    <!--end::Number-->
                                                                </div>
                                                                <!--end::Stat-->
                                                            </div>
                                                            <!--end::Stats-->
                                                        </div>
                                                        <!--end::Wrapper-->
                                                    </div>
                                                    <!--end::Stats-->
                                                </div>
                                                <!--end::Info-->
                                            </div>
                                            <!--end::Details-->
                                        </div>
                                        <!--begin::Col-->
                                        <div class="col-md-12 mb-md-0 mb-5 mt-5">
                                            <!--begin::Card widget 4-->
                                            <div class="card card-flush h-100 border-0">
                                                <!--begin::Card body-->
                                                <div class="card-body pb-4 mt-5 pt-0 ps-0 pr-0">
                                                    <ul class="nav nav-tabs nav-line-tabs nav-line-tabs-2x mb-5 fs-6">
                                                        <li class="nav-item">
                                                            <a class="nav-link active px-5" data-bs-toggle="tab" href="#my_account_tab">My Account</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link px-5" data-bs-toggle="tab" href="#activity_tab">Activity</a>
                                                        </li>
                                                    </ul>

                                                    <div class="tab-content mt-8" id="myTabContent">
                                                        <div class="tab-pane fade show active" id="my_account_tab" role="tabpanel">
                                                          <div class="mb-6">
                                                            <div class="d-flex align-items-center">
                                                                <div class="fs-20 dark-color fw-600 me-5">
                                                                Account Information
                                                                </div>
                                                            </div>
                                                            <div class="mt-5">
                                                                <form action="#">
                                                                    <div class="row my-4">
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="accountType" class="form-label required">Account type</label>
                                                                                <select required name="accountType" id="accountType" class="form-select form-select-solid">
                                                                                    <option value="admin">Admin</option>
                                                                                    <option value="customer">Customer</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="accountStatus" class="form-label required">Account status</label>
                                                                                <select required name="accountStatus" id="accountStatus" class="form-select form-select-solid">
                                                                                    <option value="active">Active</option>
                                                                                    <option value="idle">Adle</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="accountAccountManager" class="form-label">Account manager</label>
                                                                                <input class="form-control-solid form-control" value="" type="date" name="accountAccountManager" id="accountAccountManager" placeholder="Enter user birthday date">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="userBirthday" class="form-label">Birthday</label>
                                                                                <input class="form-control-solid form-control" value="" type="date" name="userBirthday" id="userBirthday" placeholder="Enter user birthday date">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="userMemberSince" class="form-label">Member since</label>
                                                                                <input class="form-control-solid form-control disabled" disabled readonly value="21 August 2023" type="text" name="userMemberSince" id="userMemberSince" placeholder="">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="userLastLogin" class="form-label">Last login</label>
                                                                                <input class="form-control-solid form-control disabled" disabled readonly value="24 August 2023, 06:08 AM" type="text" name="userLastLogin" id="userLastLogin" placeholder="">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="userLastIP" class="form-label">Last IP</label>
                                                                                <input class="form-control-solid form-control disabled" disabled readonly value="152.168.9.1" type="text" name="userLastIP" id="userLastIP" placeholder="">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <button type="button" class="btn btn-primary py-2 px-8 rounded-1" id="editAccountInfoSubmitBtn">
                                                                        <span class="indicator-label">Save changes</span>
                                                                        <span class="indicator-progress">
                                                                            <span class="spinner-border text-white" role="status">
                                                                                <span class="visually-hidden">Loading...</span>
                                                                            </span>
                                                                        </span>
                                                                    </button>
                                                                </form>
                                                            </div>
                                                          </div>
                                                          <div class="mb-6">
                                                            <div class="d-flex align-items-center">
                                                                <div class="fs-20 dark-color fw-600 me-5 py-5">
                                                                Contact Details
                                                                </div>
                                                            </div>
                                                            <div class="mt-5">
                                                                <form action="#">
                                                                    <div class="row my-4">
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="userEmail" class="form-label">Email</label>
                                                                                <input class="form-control-solid form-control disabled" disabled readonly value="jessica.davis@gmail.com" type="text" name="userEmail" id="userEmail" placeholder="">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="userPhoneNumber" class="form-label">Phone number</label>
                                                                                <input class="form-control-solid form-control disabled" disabled readonly value="044 3276 454 935" type="text" name="userPhoneNumber" id="userPhoneNumber" placeholder="">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="contactPosition" class="form-label">Position</label>
                                                                                <input class="form-control-solid form-control" value="Administrator" type="text" name="contactPosition" id="contactPosition" placeholder="Enter user position">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="contactAddress" class="form-label">Address</label>
                                                                                <input class="form-control-solid form-control" value="" type="text" name="contactAddress" id="contactAddress" placeholder="Enter user contact address">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="contactCity" class="form-label">City</label>
                                                                                <input class="form-control-solid form-control" value="" type="text" name="contactCity" id="contactCity" placeholder="Enter user contact city">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="contactState" class="form-label">State</label>
                                                                                <input class="form-control-solid form-control" value="" type="text" name="contactState" id="contactState" placeholder="Enter user contact state">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="userCountry" class="form-label">Country</label>
                                                                                <input class="form-control-solid form-control disabled" disabled readonly value="Canada" type="text" name="userCountry" id="userCountry" placeholder="">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <button type="button" class="btn btn-primary py-2 px-8 rounded-1" id="editContactDetailsSubmitBtn">
                                                                        <span class="indicator-label">Save changes</span>
                                                                        <span class="indicator-progress">
                                                                            <span class="spinner-border text-white" role="status">
                                                                                <span class="visually-hidden">Loading...</span>
                                                                            </span>
                                                                        </span>
                                                                    </button>
                                                                </form>
                                                            </div>
                                                          </div>
                                                          <div class="mb-6">
                                                            <div class="d-flex align-items-center">
                                                                <div class="fs-20 dark-color fw-600 me-5">
                                                                Login Methods
                                                                </div>
                                                            </div>
                                                            <div class="fs-14 gray mt-2 py-2">
                                                            Do not change these fields except if you want to modify the customer's login details. If changed, the new login information will be sent to the customer via email.
                                                            </div>
                                                            <div class="mt-5">
                                                                <form action="#">
                                                                    <div class="row my-4">
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="oldPassword" class="form-label required">Current password</label>
                                                                                <input required class="form-control-solid form-control" value="" type="password" name="oldPassword" id="oldPassword" placeholder="Enter your account current password">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="newPassword" class="form-label required">New password</label>
                                                                                <input required class="form-control-solid form-control" value="" type="password" name="newPassword" id="newPassword" placeholder="Enter the new password">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div class="mb-5">
                                                                                <label for="confirmNewPassword" class="form-label required">Confirm new password</label>
                                                                                <input required class="form-control-solid form-control" value="" type="password" name="confirmNewPassword" id="confirmNewPassword" placeholder="Confirm account new password">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <button type="button" class="btn btn-primary py-2 px-8 rounded-1" id="changePasswordSubmitBtn">
                                                                        <span class="indicator-label">Change password</span>
                                                                        <span class="indicator-progress">
                                                                            <span class="spinner-border text-white" role="status">
                                                                                <span class="visually-hidden">Loading...</span>
                                                                            </span>
                                                                        </span>
                                                                    </button>
                                                                </form>
                                                            </div>
                                                          </div>
                                                        </div>
                                                        <div class="tab-pane fade" id="activity_tab" role="tabpanel">
                                                            <div class="mb-6">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="fs-20 dark-color fw-600 me-5">
                                                                    Account Activity
                                                                    </div>
                                                                </div>
                                                                <div class="fs-14 text-gray-600 mt-2 py-5">
                                                                Monitor your account activities by date and time, IP addresses and events. This will help you be informed and keeping records of the changes that are happening in your account.
                                                                </div>
                                                                <div class="table-responsive mt-5">
                                                                    <table id="account-activity-report" class="table custom-table table-bordered table-row-gray-300 gy-5 datatable">
                                                                        <thead>
                                                                            <tr class="fs-14 fw-600 dark-color">
                                                                                <th class="white-color">Date & Time</th>
                                                                                <th class="white-color">IP Address</th>
                                                                                <th class="white-color">Event</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr>
                                                                                <td>5 September 2023 07:10 AM</td>
                                                                                <td>45.228.99.232</td>
                                                                                <td>You enabled API access</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>5 September 2023 07:09 AM</td>
                                                                                <td>45.228.99.232</td>
                                                                                <td>You logged into Ynet Interactive</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>5 September 2023 07:08 AM</td>
                                                                                <td>45.228.99.232</td>
                                                                                <td>You Logged into Ynet Interactive</td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div> 
                                                    </div>
                                                </div>
                                                <!--end::Card body-->
                                            </div>
                                            <!--end::Card widget 4-->
                                        </div>
                                        <!--end::Col--> 
                                    </div>
                                    <!--end::Row-->
								</div>
								<!--end::Content container-->
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

			<uc1:footerLinks runat="server" id="footerLinks" />

	</body>
	<!--end::Body-->
</html>

