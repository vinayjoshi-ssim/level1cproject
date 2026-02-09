<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from kanakku.dreamstechnologies.com/html/template/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 24 Dec 2025 03:33:18 GMT -->
<head>

	<!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login | Apna Hair Salon</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Kanakku is a Sales, Invoices & Accounts Admin template for Accountant or Companies/Offices with various features for all your needs. Try Demo and Buy Now.">
	<meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
	<meta name="author" content="Dreams Technologies">

	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

	<!-- Apple Touch Icon -->
	<link rel="apple-touch-icon" sizes="180x180" href="assets/img/apple-touch-icon.png">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">

	<!-- Tabler Icon CSS -->
	<link rel="stylesheet" href="assets/plugins/tabler-icons/tabler-icons.min.css">

	<!-- Iconsax CSS -->
	<link rel="stylesheet" href="assets/css/iconsax.css">

	<!-- Main CSS -->
	<link rel="stylesheet" href="assets/css/style.css">

</head>

<body class="bg-white">

	<!-- Begin Wrapper -->
	<div class="main-wrapper auth-bg">

		<!-- Start Content -->
		<div class="container-fuild">
			<div class="w-100 overflow-hidden position-relative flex-wrap d-block vh-100">

				<!-- start row -->
				<div class="row justify-content-center align-items-center vh-100 overflow-auto flex-wrap ">
					<div class="col-lg-4 mx-auto">
                                            <form action="checkAdminLogin.jsp" method="POST" class="d-flex justify-content-center align-items-center">
							<div class="d-flex flex-column justify-content-lg-center p-4 p-lg-0 pb-0 flex-fill">
								<div class=" mx-auto mb-5 text-center">
									<img src="assets/img/logo.png" class="img-fluid" alt="Logo">
								</div>
								<div class="card border-0 p-lg-3 shadow-lg">
									<div class="card-body">
                                                                            <%
                                                                                
                                                                                String msg = request.getParameter("msg");
                                                                                if(msg != null)
                                                                                    out.print("<div class='alert alert-danger d-flex align-items-center' role='alert'>  <div class=' me-2' role='status' aria-hidden='true'></div> "+msg+"</div>");
                                                                            %>
										<div class="text-center mb-3">
											<h5 class="mb-2">Sign In</h5>
											<p class="mb-0">Please enter below details to access the dashboard</p>
										</div>
										<div class="mb-3">
											<label class="form-label">Email Address</label>
											<div class="input-group">
												<span class="input-group-text border-end-0">
													<i class="isax isax-sms-notification"></i>
												</span>
                                                                                            <input name="email" required="" type="email" value="" class="form-control border-start-0 ps-0" placeholder="Enter Email Address">
											</div>
										</div>
										<div class="mb-3">
											<label class="form-label">Password</label>
											<div class="pass-group input-group">
												<span class="input-group-text border-end-0">
													<i class="isax isax-lock"></i>
												</span>
												<span class="isax toggle-password isax-eye-slash"></span>
                                                                                                <input name="password" required="" type="password" class="pass-inputs form-control border-start-0 ps-0" placeholder="****************">
											</div>
										</div>
										
										<div class="mb-1">
											<button type="submit" class="btn bg-primary-gradient text-white w-100">Sign In</button>
										</div>
										
										
										
									</div><!-- end card body -->
								</div><!-- end card -->
							</div>
						</form>
					</div><!-- end col -->
				</div>
				<!-- end row -->

			</div>
		</div>
		<!-- End Content -->

	</div>
	<!-- End Wrapper -->

	<!-- jQuery -->
	<script src="assets/js/jquery-3.7.1.min.js" type="6b54063805fab4d9ff7539aa-text/javascript"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/bootstrap.bundle.min.js" type="6b54063805fab4d9ff7539aa-text/javascript"></script>

	<!-- Custom JS -->
	<script src="assets/js/script.js" type="6b54063805fab4d9ff7539aa-text/javascript"></script>

<script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="6b54063805fab4d9ff7539aa-|49" defer></script></body>


<!-- Mirrored from kanakku.dreamstechnologies.com/html/template/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 24 Dec 2025 03:33:19 GMT -->
</html>