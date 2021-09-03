

        <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                
                <ol class="breadcrumb">
                    
                    </li>
                   
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
       <div class="row">
            <div class="col-md-8">
                <h3><font color="#000000">Contact us </font></h3>
                <form name="sentMessage" method="post" id="contactForm" novalidate>
                  <?php echo @$err; ?>
				    <div class="control-group form-group">
                        
						
						<div class="controls">
                            <label>Name:</label>
                            <input type="text" class="form-control" name="n" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Mobile Number:</label>
                            <input type="number" class="form-control" name="m" required data-validation-required-message="Please enter your phone number.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Email Address:</label>
                            <input type="email" class="form-control" name="e" required data-validation-required-message="Please enter your email address.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Message:</label>
                            <textarea rows="10" name="msg" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" name="save" class="btn btn-primary">Send Message</button>
					<h1></h1>
                </form>
            </div>
			<div class="col-md-4" style="margin-top:30px">
			<h2>Developed By</h2>
			<h3>FAISAL P J&nbsp; & &nbsp;AJAS FRANK</h3>
			<img src="images/faisalpj.jpg"height="150px" width="150px"></img>
			<img src="images/ajas.png"height="150px" width="150px"></img>
                <h3>Contact Details</h3>
                <p>
                    Wayanad<br>Kerala, India<br>
                </p>
                <p><i class="fa fa-phone"></i> 
                    <abbr title="Phone">Phone</abbr>: +91 7034278131</p>
					<p><i class="fa fa-phone"></i> 
                    <abbr title="Phone">Phone</abbr>: +91 9207604553</p>
                <p><i class="fa fa-envelope-o"></i> 
                    <abbr title="Email">E-mail</abbr>: <a href="mailto:faisalirulam@gmail.com">faisalirulam@gmail.com</a>
                </p>
				<p><i class="fa fa-envelope-o"></i> 
                    <abbr title="Email">E-mail</abbr>: <a href="mailto:ajasfrank@gmail.com">ajasfrank@gmail.com</a>
                </p>
                <p><i class="fa fa-clock-o"></i> 
                    <abbr title="Hours">Home</abbr>: Monday - Sunday: 9:00 AM to 9:00 PM</p>
                <ul class="list-unstyled list-inline list-social-icons">
                    <li>
                        <a href="https://www.facebook.com/muhammed.faisal.16100921"><i class="fa fa-facebook-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-linkedin-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-twitter-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-google-plus-square fa-2x"></i></a>
                    </li>
                </ul>
            </div>
        </div>

        </div>
        
         

    <br/><br/>
    
    </div>
    <!-- /.container -->

