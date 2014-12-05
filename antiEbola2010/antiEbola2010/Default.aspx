<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="antiEbola2010._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p>
        <asp:HyperLink ID="hlSearch" runat="server" class="large red btn" Text="Find Family"
            Target="_blank"></asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="hlInput" runat="server" class="large red btn" Text="Figth for Ebola"
            Target="_blank"></asp:HyperLink>
    </p>
    <div class="container">
        <span id="sl_play" class="sl_command">&nbsp;</span> <span id="sl_pause" class="sl_command">
            &nbsp;</span> <span id="sl_i1" class="sl_command sl_i">&nbsp;</span> <span id="sl_i2"
                class="sl_command sl_i">&nbsp;</span> <span id="sl_i3" class="sl_command sl_i">&nbsp;</span>
        <span id="sl_i4" class="sl_command sl_i">&nbsp;</span> <span id="sl_i5" class="sl_command sl_i">
            &nbsp;</span> <span id="sl_i6" class="sl_command sl_i">&nbsp;</span> <span id="sl_i7"
                class="sl_command sl_i">&nbsp;</span> <span id="sl_i8" class="sl_command sl_i">&nbsp;</span>
        <span id="sl_i9" class="sl_command sl_i">&nbsp;</span>
        <section id="slideshow">
	
		<%--<a class="commands prev commands1" href="#sl_i9" title="Go to last slide">&lt;</a>
		<a class="commands next commands1" href="#sl_i2" title="Go to 2nd slide">&gt;</a>
		<a class="commands prev commands2" href="#sl_i1" title="Go to 1rst slide">&lt;</a>
		<a class="commands next commands2" href="#sl_i3" title="Go to 3rd slide">&gt;</a>
		<a class="commands prev commands3" href="#sl_i2" title="Go to 2nd slide">&lt;</a>
		<a class="commands next commands3" href="#sl_i4" title="Go to 4th slide">&gt;</a>
		<a class="commands prev commands4" href="#sl_i3" title="Go to 3rd slide">&lt;</a>
		<a class="commands next commands4" href="#sl_i5" title="Go to 5th slide">&gt;</a>
		<a class="commands prev commands5" href="#sl_i4" title="Go to 4th slide">&lt;</a>
		<a class="commands next commands5" href="#sl_i6" title="Go to 6th slide">&gt;</a>
		<a class="commands prev commands6" href="#sl_i5" title="Go to 5th slide">&lt;</a>
		<a class="commands next commands6" href="#sl_i7" title="Go to 7th slide">&gt;</a>
		<a class="commands prev commands7" href="#sl_i6" title="Go to 6th slide">&lt;</a>
		<a class="commands next commands7" href="#sl_i8" title="Go to 8th slide">&gt;</a>
		<a class="commands prev commands8" href="#sl_i7" title="Go to 7th slide">&lt;</a>
		<a class="commands next commands8" href="#sl_i9" title="Go to last slide">&gt;</a>
		<a class="commands prev commands9" href="#sl_i8" title="Go to 8th slide">&lt;</a>
		<a class="commands next commands9" href="#sl_i1" title="Go to first slide">&gt;</a>--%>
		
		<a class="play_commands pause" href="#sl_pause" title="Maintain paused">Pause</a>
		<a class="play_commands play" href="#sl_play" title="Play the animation">Play</a>
		
		<div class="container">
			<div class="c_slider"></div>
			<div class="slider">
				<figure>
					<img src="finalwebsite/img/dummy-640x310-1.jpg" alt="" width="640" height="310" />
					<figcaption>One Earth</figcaption>
				</figure><!--
				--><figure>
					<img src="finalwebsite/img/dummy-640x310-2.jpg" alt="" width="640" height="310" />
					<figcaption>Different World</figcaption>
				</figure><!--
				--><figure>
					<img src="finalwebsite/img/dummy-640x310-3.jpg" alt="" width="640" height="310" />
					<figcaption>HDifferent World</figcaption>
				</figure><!--
				--><figure>
					<img src="finalwebsite/img/dummy-640x310-4.jpg" alt="" width="640" height="310" />
					<figcaption>Homeless People</figcaption>
				</figure><!--
				--><figure>
					<img src="finalwebsite/img/dummy-640x310-5.jpg" alt="" width="640" height="310" />
					<figcaption>Homeless People</figcaption>
				</figure><!--
				--><figure>
					<img src="finalwebsite/img/dummy-640x310-6.jpg" alt="" width="640" height="310" />
					<figcaption>What can WE do for THEM?</figcaption>
				</figure>
				<figure>
					<img src="finalwebsite/img/dummy-640x310-7.jpg" alt="" width="640" height="310" />
					<figcaption>Jump into Action! Find their families now!</figcaption>
				</figure><!--
				--><figure>
					<img src="finalwebsite/img/dummy-640x310-8.jpg" alt="" width="640" height="310" />
					<figcaption>Fight for EBOLA</figcaption>
				</figure><!--
				--><figure>
					<img src="finalwebsite/img/dummy-640x310-9.jpg" alt="" width="640" height="310" />
					<figcaption>WE can do MORE.</figcaption>
				</figure><!--
			</div>
		</div>
		
		<span id="timeline"></span>
		
		<ul class="dots_commands"><!--
			-->
		</ul>
		
	</section>
        <div class="row">
            <div class="col-md-3">
                <h2>
                    Find his relatives quickly
                </h2>
                <p>
                    Just click on the "login" button to add you into our database, to easily check out
                    your current situation and find your relatives quickly.
                </p>
            </div>
            <div class="col-md-3">
                <h2>
                    Internet is our power</h2>
                <p>
                    This Website is a brand new ways to escape from catastrophe or disease around the
                    world.</p>
                <ul>
                    <li>Population displacement</li>
                    <li>Vaccination campaign</li>
                    <li>Prevention and information</li>
            </div>
            <div class="col-md-3">
                <h2>
                    Get Warn about all missions !</h2>
                <p>
                    World wide actions :<a href="http://www.grotius.fr/" target="_blank">http://www.grotius.fr/.</a></p>
            </div>
        </div>
        <hr>
        <footer>
<p>Sincerely yours, <a href="http://www.nuitdelinfo.com/" target="_blank">Nuit de L'info.</a></p>
</footer>
    </div>
    </body>
    <!-- We've included jQuery. But you can of course use any other lib! -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.mi.js"></script>
</asp:Content>
