<%@page import="DTO.ServiceCategoryDTO"%>
<%@page import="java.util.List"%>
<%@page import="DAO.CategoryDAO"%>
<%@include file="header.jsp" %>

<%@include file="sidebar.jsp" %>

<div class="page-wrapper">

<!-- Start Content -->
            <div class="content">

                <!-- Page Header -->
                 <!-- Page Header -->
                <div class="d-flex d-block align-items-center justify-content-between flex-wrap gap-3 mb-3">
                        <div>
                        
                            <h6 class="page-title">All Category</h6>
                        </div>

                        <div class="d-flex my-xl-auto right-content align-items-center flex-wrap gap-2">
                            
                            <div>
                                <a href="AddCategory.jsp" class="btn btn-primary d-flex align-items-center" >
                                    <i class="isax isax-add-circle5 me-1"></i>Add Category
                                </a>
                            </div>
                        </div>
                    
                </div>
                <!-- End Page Header -->

                <!-- start row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            
                            <div class="card-body">
                                <div class="table-search d-flex align-items-center">
                                    <div class="search-input">
                                        <a href="javascript:void(0);" class="btn-searchset"><i class="isax isax-search-normal fs-12"></i></a>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    
                                    <%
                                        String msg = request.getParameter("msg");
                                        boolean isDeleted = Boolean.parseBoolean(request.getParameter("isDeleted")) ;
                                        if(msg != null){
                                            if(isDeleted)
                                                out.print("<div class='alert alert-success d-flex align-items-center' role='alert'>  <div class=' me-2' role='status' aria-hidden='true'></div> "+msg+"</div>");
                                            else
                                                out.print("<div class='alert alert-danger d-flex align-items-center' role='alert'>  <div class=' me-2' role='status' aria-hidden='true'></div> "+msg+"</div>");
                                        }
                                    %>
                                    
                                    <table class="table table-nowrap datatable">
                                        <thead>
                                            <tr>
                                                <th>S.NO.</th>
                                                <th>Name</th>
                                                <th>Description</th>
                                                <th>Image</th>
                                                <th>Date</th>
                                                
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <% 
                                                CategoryDAO dao = new CategoryDAO();
                                                List<ServiceCategoryDTO> services = dao.getAllCategory();
                                            %>
                                            
                                            <%
                                                int i = 1;
                                                for(ServiceCategoryDTO dto: services){
                                            %>
                                            
                                            <tr>
                                                <td><%= i %></td>
                                                <td><%= dto.getName() %> </td>
                                                <td ><pre style="max-width: 200px; word-wrap: break-word;"><%= dto.getDescription()%></pre></td>
                                                <td><img width="150" height="100" src="assets/img/<%= dto.getImage() %>" alt="alt"/></td>
                                                
                                                <td><%= dto.getCreated_at() %></td>
                                                <td>
                                                    <a href="addstaff.php"><i class="fa fa-pencil text text-success"></i></a>
                                                    
                                                    <a onclick="return confirm('Are you sure ? you want to delete this category!!');" href="deleteCategory.jsp?id=<%= dto.getId() %>"><i class="fa fa-trash text text-danger"></i></a></td>
                                            </tr>
                                           <%
                                               i++;
                                               }
                                           %>
                                            
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div><!-- end card body -->
                        </div><!-- end card -->
                    </div><!-- end col -->
                </div>
                <!-- end row -->

            </div>
			<!-- End Content -->

            <!-- Start Footer -->
            <div class="footer d-sm-flex align-items-center justify-content-between bg-white py-2 px-4 border-top">
                <p class="text-dark mb-0">&copy;
                    <script type="2f2f26849497d598cdd754b9-text/javascript">
                        document.write(new Date().getFullYear())
                    </script> <a href="javascript:void(0);" class="link-primary">SSISM</a>, All Rights Reserved</p>
                <p class="text-dark">Version : 1.3.8</p>
            </div>
            <!-- End Footer -->

        </div>

        <!-- ========================
			End Page Content
		========================= -->

        
    </div>
    <!-- End Wrapper -->


<%@include file="footer.jsp" %>