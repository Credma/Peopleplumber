<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="peopleplumber.index" %>

<!DOCTYPE html><html lang='en'>
<head>
	<title>People Plumber</title>
	<link rel="stylesheet" type="text/css" href="css/site.css?v=2"/>
	<meta name="msapplication-config" content="none" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=8,IE=9,IE=10,IE=edge"/>
	<meta name="viewport" content="initial-scale=1.0, minimum-scale=1.0"/>
	<link href="https://fonts.googleapis.com/css?family=Oxygen:400,700" rel="stylesheet" type="text/css">
	<link href="css/cssmain.css" rel="stylesheet" />


	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-FCSQQ7G4ZJ"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'G-FCSQQ7G4ZJ');
</script>


<!-- Hotjar Tracking Code for https://peopleplumber.co.uk -->
<script>
    (function (h, o, t, j, a, r) {
        h.hj = h.hj || function () { (h.hj.q = h.hj.q || []).push(arguments) };
        h._hjSettings = { hjid: 2649468, hjsv: 6 };
        a = o.getElementsByTagName('head')[0];
        r = o.createElement('script'); r.async = 1;
        r.src = t + h._hjSettings.hjid + j + h._hjSettings.hjsv;
        a.appendChild(r);
    })(window, document, 'https://static.hotjar.com/c/hotjar-', '.js?sv=');
</script>

	<style>


	    .newStyle1 {
            color: #FFFFFF;
        }

		.card {
			font-size: 14px;
		}

		hs.{
			max-width: 30px
		}

		

	input[type="submit"],
	input[type="reset"],
	input[type="button"],
	.button {
		-moz-appearance: none;
		-webkit-appearance: none;
		-o-appearance: none;
		-ms-appearance: none;
		appearance: none;
		-moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-o-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		-ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
		background-color: #192024;
		border-radius: 6px;
		border: 1;
		color: #ffffff !important;
		cursor: pointer;
		display: inline-block;
		font-weight: 300;
		text-transform: uppercase;
		letter-spacing: 0.125em;
		font-size: 3em;
		height: 5em;
		width: 100%;
		line-height: 2.85em;
		padding: 0 1.75em;
		text-align: center;
		text-decoration: none;
		white-space: nowrap;
		text-indent: 0.25em;
	}


			input[type="submit"].icon:before,
			input[type="reset"].icon:before,
			input[type="button"].icon:before,
			.button.icon:before {
				margin-right: 0.5em;
			}

		input[type="submit"].fit,
		input[type="reset"].fit,
		input[type="button"].fit,
		.button.fit {
			display: block;
			margin: 0 0 1em 0;
			width: 100%;
		}

		input[type="submit"].small,
		input[type="reset"].small,
		input[type="button"].small,
		.button.small {
			font-size: 0.7em;
		}

		input[type="submit"].big,
		input[type="reset"].big,
		input[type="button"].big,
		.button.big {
			font-size: 1.2em;
			height: 2.65em;
			line-height: 2.65em;
		}

		input[type="submit"].alt,
		input[type="reset"].alt,
		input[type="button"].alt,
		.button.alt {
			background-color: transparent;
			box-shadow: inset 0 0 0 1px rgba(144, 144, 144, 0.25);
			color: #666f77 !important;
		}

			input[type="submit"].alt:hover,
			input[type="reset"].alt:hover,
			input[type="button"].alt:hover,
			.button.alt:hover {
				background-color: rgba(144, 144, 144, 0.075);
			}

			input[type="submit"].alt:active,
			input[type="reset"].alt:active,
			input[type="button"].alt:active,
			.button.alt:active {
				background-color: rgba(144, 144, 144, 0.2);
			}

			input[type="submit"].alt.icon:before,
			input[type="reset"].alt.icon:before,
			input[type="button"].alt.icon:before,
			.button.alt.icon:before {
				color: #bbb;
			}

		input[type="submit"].special,
		input[type="reset"].special,
		input[type="button"].special,
		.button.special {
			background-color: #102B40;
			color: #ffffff !important;
			text-align: center !important;
			font-size: 1rem;
			font-weight: 400;
			font-family: Montserrat,sans-serif;
		}
		

			input[type="submit"].special:hover,
			input[type="reset"].special:hover,
			input[type="button"].special:hover,
			.button.special:hover {
				background-color: #76a9d7;
			}

			input[type="submit"].special:active,
			input[type="reset"].special:active,
			input[type="button"].special:active,
			.button.special:active {
				background-color: #102B40;
				color: #ffffff !important;
				text-align: center !important;
				font-size: 1rem;
				font-weight: 400;
				font-family: Montserrat,sans-serif;
				
			}

		input[type="submit"].disabled, input[type="submit"]:disabled,
		input[type="reset"].disabled,
		input[type="reset"]:disabled,
		input[type="button"].disabled,
		input[type="button"]:disabled,
		.button.disabled,
		.button:disabled {
			background-color: #555f66 !important;
			box-shadow: inset 0 -0.15em 0 0 rgba(0, 0, 0, 0.15);
			color: #fff !important;
			cursor: default;
			opacity: 0.25;
		}

		auto-styleheader4 {
			
			text-align: center !important;
			font-size: 0.5rem;
			font-weight: 600;
		}

		     .ReCaptchContainer
                {
                         margin: 0 auto;
     text-align: left;
                }


	</style>

	        <script type="text/javascript">
                var shippingForm = new VarienForm('co-shipping-form');
                Validation.addAllThese(
                    [
                        ['validate-zip-international', 'Please enter a valid uk zip code.E.G. GB1 6LY', function (v) {
                            var country_id = 'GB'
                            var country = $('billing:country_id');
                            var element = $('billing:postcode');
                            if (element && ('' != element.value) && (country_id == country.value)) {
                                if (!element.value.match(/(^[A-Za-z]{1,2}[0-9]{1,2}[A-Z]?[\s][0-9][A-Za-z]{2}$)/)) {
                                    return false;
                                }
                            }
                            return true;
                        }]
                    ]
                );
            </script>



<!-- TrustBox script -->
<script type="text/javascript" src="//widget.trustpilot.com/bootstrap/v5/tp.widget.bootstrap.min.js" async></script>
<!-- End TrustBox script -->

</head>
<body>
<div class="wrapper">

	<div class="background--white">
		<div class="container-fluid">
			<div class="row">
				<header class="header" id="header">
					<div class="col-xs-6 header__logo-wrapper">
						<a href="/" class="header__logo">
							<span class="displace--hard">Local expert advice</span>
						</a>
					</div>
					<div class="hidden-xs col-sm-6 col-md-3 header__slogan">
						Expert Local Plumbers </br>All Work Guaranteed	</div>
					<div class="col-xs-6 col-md-2 header__phone">
						<i class="fa fa-phone" aria-hidden></i>
						<div>
							<span class="header__phone-tagline">Call us on</span>
							<!--alert add phonenumber - ereception?-->
							<span class="header__phone-number"><a href="tel:01932827070">01932827070</a></span>
						</div>
					</div>
				</header>
			</div>
		</div>
	</div>

	<main class="content" id="content" role="main" tabindex="-1">
	
		<div class="details">
			<div class="spacer"></div>
			<div class="spacer--1 hidden-xs"></div>

			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="text-center color--white">
							<h1>Local Experts for Local People</h1>
						</div>

						<div class="spacer--1 hidden-xs"></div>

						<div>
							<div class="details__step">
								<i class="fa fa-bars" aria-hidden="true"></i>
								<p>Fill in the simple contact form below</p>
							</div>

							<div class="details__step">
								<i class="fa fa-phone" aria-hidden="true"></i>
								<p>Quick call from our expert to discuss</p>
							</div>

							<div class="details__step">
								<i class="fa fa-info-circle" aria-hidden="true"></i>
								<p>Receive best quotes and advice</p>
							</div>

							<div class="details__step">
								<i class="fa fa-wrench" aria-hidden="true"></i>
								<p>Guaranteed work by local professionals</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="spacer"></div>
		</div>

		<div class="background--white">
                        <div class="storefront row justify-content-center py-5">
							<!--   <div class="col-12 col-lg-1 text-center text-lg-left">
								   </div>
                            <div class="col-12 col-lg-4 text-center text-lg-left">
								<p></p>
								  <img src="images/hs2.jpg" style="max-width:150px;width:100%">
							                <h3></br>Francis Kramer</h3>
                                             <p class="auto-styleheader4">With over 20 years` experience Francis is the innovating global mortgage markets.</br></br>
												People Mortgage provides lenders with a large customer base in return for the best deals. Everyone Benefits!</br></br>
												</p> 
                            </div>
									<div class="col-12 col-lg-2 text-center ">
								   </div>-->
                            <div class="col-12 col-lg-12 d-flex align-items-center text-center">
                                                   <h2></br>Our Message</h2>
                        <p class="auto-styleheader4">
                         At People Plumber we are passionate about getting every UK resident a professional plumber at the right price.</p>
						  <p class="auto-styleheader4">We only work with local experts you can trust, monitoring work carried out to ensure excellence.</p> 
						  <p class="auto-styleheader4">All work is guaranteed and every professional tradesman is fully insured.</p> 
											
                            </div>
							<div class="col-12 col-lg-1 text-center ">
								   </div>
                        </div>
                    </div>
        
	
			<div class="spacer visible-xs"></div>
			<div class="spacer--1 hidden-xs"></div>

			
		<div class="background--footer">
			<div class="spacer visible-xs"></div>
			<div class="spacer--2 hidden-xs"></div>

			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<div class="row clear-columns">
							<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
								<div class="usp">
									<i class="fa fa-check-circle" aria-hidden="true"></i>
									<p class = newStyle1>Expert advice from local professionals</p>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
								<div class="usp">
									<i class="fa fa-check-circle" aria-hidden="true"></i>
									<p class = newStyle1>Qualified in all aspects of plumbing and heating</p>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
								<div class="usp">
									<i class="fa fa-check-circle" aria-hidden="true"></i>
									<p class = newStyle1>Guaranteed work by fully insured experts</p>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
								<div class="usp">
									<i class="fa fa-check-circle" aria-hidden="true"></i>
									<p class = newStyle1>All work checked and signed off</p>
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="spacer visible-xs"></div>
			<div class="spacer--1 hidden-xs"></div>
		</div>




		<div class="background--9">
			<div class="spacer"></div>
			<div class="spacer hidden-xs"></div>

			<div class="container-fluid">
				    <form runat="server">

					<div class="row"  style="text-align: center" ></br>
						<h2><b>Request Best Deals</br></br></b></h2>
						</div>
					
						<div class="row">
							<div class="hidden-xs hidden-sm col-sm-1">&nbsp;</div>

							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="form-group">
									<label for="name">Full Name</label>
								    <input type="text" class="form-control"  id="fullname" name="fullname" required />
                                            
								</div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-4">
								<div class="form-group">
									<label for="email-address">Email Address</label>
								      <input type="email" class="form-control"  id="email" name="email" required />
                                          </div>
							</div>

							<div class="col-xs-12 col-sm-6 col-md-3">
								<div class="form-group">
									<label for="telephone-number">Mobile Number</label>
								     <input type="text" class="form-control"  id="Mobile" name="Mobile" required />
                                           </div>
							</div>

							<div class="hidden-xs hidden-sm col-sm-1">&nbsp;</div>

							<div class="col-xs-12 col-sm-6 col-md-3 col-md-push-1">
								<div class="form-group">
									<label for="postcode">Current Postcode</label>
								     <input type="text" class="form-control"  id="pcode" name="pcode" required />
                                           </div>
							</div>


							<div class="col-xs-12 col-sm-6 col-md-4 col-md-push-1">
								<div class="form-group">
									<label for="mortgage-requirement">Plumbing and Heating Requirement</label>
									<select type="text" class="form-control" placeholder="Job Requirement *" id="mortgagetype" name="mortgagetype" required ">
										<option value="">Please Select</option>
										<option value="Emergency Plumber" >Emergency Plumber"</option>
										<option value="Bathroom Plumbing" >Bathroom Plumbing</option>
										<option value="Kitchen Plumbing" >Kitchen Plumbing</option>
										<option value="Central Heating Install" >Central Heating Install</option>
										<option value="Central Heating Repair" >Central Heating Repair</option>
										<option value="Tap install or Repair" >Tap install or Repair</option>
										<option value="Outdoor Plumbing" >Outdoor Plumbing</option>
										<option value="Gas Safety Checks" >Gas Safety Checks</option>
										<option value="Under Floor Heating" >Under Floor Heating</option>
										<option value="Install Radiators" >Install Radiators</option>
										<option value="Central Heating System Flush" >Central Heating System Flush</option>
										<option value="Other" >Other</option>
									</select>
								</div>
							</div>
							</div>

							                                                                               
                                        <!--   <td colspan="3">
                                               <p align="left" style="color:white">Use a friend or family members User ID and earn them extra prebit bonus</p>
                                          <input type="tel" class="form-control" placeholder="Invited By" id="Invitedby" name="Invitedby" />
                                            </td>-->
                                     		<div class="hidden-xs hidden-sm col-sm-1">&nbsp;</div>

							<div class="col-xs-12 col-sm-6 col-md-3">
													
         <div id="ReCaptchContainer"></div>
        <asp:Label ID="lblMessage1" runat="server"></asp:Label>
                                    
								</div>
						

													<div class="col-xs-12 col-sm-12 col-md-3 col-md-push-1">
								<div class="form-group">
									<label>&nbsp;</label>
									  <asp:Button ID="BtnGetMortgage_" class="button special" runat="server"  Text="Submit Request" OnClick="BtnGetMortgage_Click" />
								</div>
							</div>

							<div class="hidden-xs hidden-sm col-sm-1">&nbsp;</div>
						

									</form>
			</div>
							
			


		<!--	<div class="container-fluid px-0 background--9 py-5" style="text-align: center">
                    <div class="container " style="">
                        <div class="storefront row justify-content-center">
                            <div class="col-11 col-lg-10 col-xl-8"></BR>
                           <div class="trustpilot-widget" data-locale="en-GB" data-template-id="5419b6a8b0d04a076446a9ad" data-businessunit-id="61696f75a308ed001d65026c" data-style-height="40px" data-style-width="100%" data-theme="light" data-min-review-count="50">

  <a href="https://uk.trustpilot.com/review/peoplemortgage.co.uk" target="_blank" ><img src="images/trustpilot2.png" ; style="height: 100px" ; /></a>
</div>
								</BR></br>

                            </div>
                        </div>
                    </div>
                </div>-->
			<div class="spacer"></div>
			<div class="spacer hidden-xs"></div>
		</div>

	<!--	<div class="background--white">
			<div class="spacer visible-xs"></div>
			<div class="spacer--1 hidden-xs"></div>

			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12">
						<h2>Quick &amp; Simple Mortgage Advice - Online &amp; Over The Phone</h2>
						<div class="row">
							<div class="col-xs-12 col-sm-4">
								<p>
									Do you want a mortgage but don't want to spend hours on comparison sites and still
									not know if you have the best deal? Do you want the best rate available but don't
									want to spend hours traipsing up and down the high street? Do you want professional
									advice but don't want to spend hours being interrogated by a bank?
								</p>
							</div>
							<div class="col-xs-12 col-sm-4">
								<p>
									At onlinemortgageadvice.co.uk we will get you mortgage quotes and a decision in
									principle within a matter of minutes – completely free of charge! We will handle
									your enquiry immediately as we discuss your options over the phone and via email so
									there is no need to wait weeks for an appointment.
								</p>
							</div>
							<div class="col-xs-12 col-sm-4">
								<p>
									If you like your quote, we’ll send you the mortgage documentation and start
									processing your application immediately. You will receive the same expert advice as
									you would receive in person but managing the process online and over the phone
									ensures the process is much simpler and, more importantly, quicker.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="spacer visible-xs"></div>
			<div class="spacer--1 hidden-xs"></div>
		</div>
			-->
				

	</main>


	<footer class="footer" id="footer" role="contentinfo">
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<h4>&copy; People Plumber | Tel: <a href="tel:01932827070">01932827070</a> |
					<a href="info@peopleplumber.co.uk">info@peopleplumber.co.uk</a> |
					Rowtown, Surrey
				</h4>

				<p>Peopleplumber.co.uk is an information centre for local professional plumbing and heating contractors.</p>

				<p>&nbsp;</p>

			<!--	<p><a href="/index.html">Privacy Policy</a></p>-->
			</div>
		</div>
	</div>
</footer>

	      <script src="https://www.google.com/recaptcha/api.js?onload=renderRecaptcha&render=explicit" async defer></script>
    <script type="text/javascript">
    var your_site_key = '6Ld8bnUlAAAAABOfHHuJHCgHb8lxZf-4buwlxtEZ';
        var renderRecaptcha = function () {
            grecaptcha.render('ReCaptchContainer', {
                'sitekey': '6Ld8bnUlAAAAABOfHHuJHCgHb8lxZf-4buwlxtEZ',
                'callback': reCaptchaCallback,
                theme: 'light', //light or dark
                type: 'image',// image or audio
                size: 'normal'//normal or compact
            });
        };
        var reCaptchaCallback = function (response) {
            if (response !== '') {
                document.getElementById('lblMessage1').innerHTML = "";
            }
        };
    </script>


</body>
</html>

