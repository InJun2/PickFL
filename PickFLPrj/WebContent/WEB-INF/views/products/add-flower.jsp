<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>PickFL</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  
    <style>
        img{
            width: 5rem;
            height: 5rem;
        }
        .center{
            text-align: center;
        }
        .thumbnail{
            width: 10rem;
            height: 10rem;
        }
        
        .title{
            font-weight: 900;
            text-align: right;
        }
  
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  </head>
  
  <body>
   <%@include file="/WEB-INF/views/common/header.jsp" %>
           <section id="review-container">
              <div class="center">
                  <div class="container">
                      <div class="row mt-3">
                          <div class="col-sm mb-4">
                              <div><h1>??? ??????</h1></div>
                          </div>
                      </div>
                      <form action="add-flower" method="post" enctype="multipart/form-data">
                          <div class="row mb-3">
                              <label for="pname" class="col-sm-2 col-form-label title">?????????</label>
                              <div class="col-sm-7">
                                <input type="text" class="form-control" id="pname" name="pname" placeholder="???????????? ????????? ?????????" required>
                              </div>
                              <div class="col-sm-3 align-self-center">
                              	<span id="isNameDup" class="d-none" style="color: red;">?????? ???????????? ??????????????????.</span>
                              </div>
                          </div>
                          <div class="row mb-3">
                              <label for="price" class="col-sm-2 col-form-label title">????????????</label>
                              <div class="col-sm-4">
                                <input type="number" class="form-control" id="price" name="price" placeholder="???????????? ??????" required>
                              </div>
                              <label for="stock" class="col-sm-2 col-form-label title">????????????</label>
                              <div class="col-sm-4">
                                <input type="number" class="form-control" id="stock"  name="stock" placeholder="???????????? ??????" required>
                              </div>
                          </div>
                          <div class="row mb-3">
                            <label for="flang" class="col-sm-2 col-form-label title">??????</label>
                            <div class="col-sm-4">
                              <input type="text" class="form-control" id="flang" name="flang" placeholder="????????? ????????? ?????????" required>
                            </div>
                            <label for="simple" class="col-sm-2 col-form-label title">????????????</label>
                            <div class="col-sm-4">
                              <input type="text" class="form-control" id="simple" name="simple" placeholder="??????????????? ????????? ?????????" required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="detail" class="col-sm-2 col-form-label title">????????????</label>
                            <div class="col-sm-10">
                            <textarea class="form-control" id="detail" name="detail" rows="5" placeholder="????????? ????????? ?????????"></textarea required>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="color" class="col-sm-2 col-form-label title">??????</label required>
                            <div class="col-sm-4">
                                <select class="form-select" id="color" name="color">
                                    <option selected>?????? ??????</option>
                                    <option value="?????????">?????????</option>
                                    <option value="?????????">?????????</option>
                                    <option value="?????????">?????????</option>
                                    <option value="?????????">?????????</option>
                                    <option value="?????????">?????????</option>
                                    <option value="?????????">?????????</option>
                                </select>
                            </div>
                            <label for="size" class="col-sm-2 col-form-label title">??????</label required>
                            <div class="col-sm-4">
                                <select class="form-select" id="size" name="size">
                                    <option selected>?????? ??????</option>
                                    <option value="S">S</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>

                                </select>
                            </div>
                        </div>


                          <div class="row mb-3">
                              <div class="col-sm-2 align-self-center title">???????????????</div>
                              <div class="col-sm-10">
                                  <div class="input-group">
                                      <input type="file"  onchange="readURL(this);" class="form-control" name="image" id="inputImg" aria-label="Upload" required>
                                     <!--  <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">????????????</button> -->
                                  </div>
                              </div>
                          </div>
                          <div class="row mb-3">
  
                              <div class="col-sm">
                                  <img class="thumbnail rounded m-lg-3" id="img">
                                  
                              </div>
                          </div>
                          
                          <div class="row">
                              <div class="col-sm">
                                  <input type="submit" class="btn btn-success" id="submit" value="????????????">
                              </div>
                              <div class="col-sm">
                                  <a href="manage-product"><input type="button" class="btn btn-outline-dark" value="????????????"></a>
                              </div>
                          </div>
              
                      </form>
                  </div>
              </div>
          </section>
 <%@include file="/WEB-INF/views/common/footer.jsp" %>
 
 <script>
 
 function readURL(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('img').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('img').src = "";
	  }
	}

 
 $("#pname").keyup(function(){
		$.ajax({
			url : '/PickFL/productDupCheck',
			method : 'get',
			data : {
				product_name : $("#pname").val()
			},
			dataType : "json",
			success : function(data){
					if(data.result == '1'){
						$("#isNameDup").toggleClass("d-none", false);
					} else {
						$("#isNameDup").toggleClass("d-none", true);
					}
				},
			error : function(err){
				alert('fail');
			}
		})
	})
 	
 </script>
</body>

</html>
