<%@page import="DTO.ServiceCategoryDTO"%>
<%@page import="DAO.CategoryDAO"%>
<%@include file="header.jsp" %>

<%@include file="sidebar.jsp" %>



<!-- ========================
			Start Page Content
		========================= -->

		<div class="page-wrapper">
<!-- Start Content -->
            <div class="content">

                <!-- start row -->
                <div class="row">
                    <div class="col-md-10 mx-auto">
                        <div>
                            <div class="d-flex align-items-center justify-content-between mb-3">
                                <h6><a href="ServiceCategory.jsp"><i class="isax isax-arrow-left me-2"></i>All Categories</a></h6>
                                
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="mb-3">Update Category</h5>
                                    <form action="updateCategoryAction.jsp" method="POST" enctype="multipart/form-data">
                                        
                                        <%
                                            String id = request.getParameter("id");
                                            CategoryDAO dao = new CategoryDAO();
                                            ServiceCategoryDTO dto = dao.getSingleCategory(id);
                                        %>
                                        <input type="hidden" name="id" value="<%=id%>">
                                        <!-- start row -->
                                        <div class="row gx-3">
                                            <div class="col-lg-12 col-md-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Name<span class="text-danger ms-1">*</span></label>
                                                    <input required="" name="name" type="text" value="<%= dto.getName() %>" placeholder="Enter Name of Category" class="form-control">
                                                </div>
                                            </div><!-- end col -->
                                           
                                           <div class="col-lg-12 col-md-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Description<span class="text-danger ms-1">*</span></label>
                                                    <textarea required="" style="height: 150px;" name="description" class="form-control"><%= dto.getDescription() %></textarea>

                                                </div>
                                            </div><!-- end col -->
                                            
                                            
                                            <div class="col-lg-6 col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Image<span class="text-danger ms-1">*</span></label>
                                                    <input name="image" type="file"  class="form-control">
                                                </div>
                                            </div><!-- end col -->
                                            
                                            <div class="col-lg-6 col-md-6">
                                                <div class="mb-3">
                                                    <img width="150" height="100" src="assets/img/category/<%= dto.getImage() %>" alt="alt"/>
                                                </div>
                                            </div><!-- end col -->
                                        </div>
                                        <!-- end row -->

                                        <div class="d-flex align-items-center justify-content-between">
                                            <button type="button" class="btn btn-outline-white">Cancel</button>
                                            <button type="submit" class="btn btn-primary">Update Now</button>
                                        </div>
                                    </form>
                                </div><!-- end card body -->
                            </div><!-- end card -->
                        </div>
                    </div><!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- End Content -->

            <!-- Start Footer-->
            <div class="footer d-sm-flex align-items-center justify-content-between bg-white py-2 px-4 border-top">
                <p class="text-dark mb-0">&copy; 2025 <a href="javascript:void(0);" class="link-primary">Kanakku</a>, All Rights Reserved</p>
                <p class="text-dark">Version : 1.3.8</p>
            </div>
            <!-- End Footer-->

        </div>

        <!-- ========================
			End Page Content
		========================= -->

    </div>
    <!-- End Wrapper -->



<%@include file="footer.jsp" %>