</div><?php if ($this->closeLink): ?></a></li><?php else: ?></li><?php endif; ?>
</ul></div>

<?php if($this->enableSlider): ?>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
<?php echo '//'.$this->swipeJsSelected; ?>

<?php if($this->swipeJsSelected == true): ?>

window.mySwipe = new Swipe(
	document.getElementById(document.getElement('#<?php echo $this->articleId; ?> .ce_powerslide_container'))
);

<?php else: ?>

    var powerslide<?php echo $this->sliderId; ?>;
    window.addEvent('domready', function() {
        var powerslideContainer = document.getElement('#<?php echo $this->articleId; ?> .ce_powerslide_container');
        powerslide<?php echo $this->sliderId; ?> = new PowerSlide({
            container: powerslideContainer,
            items: document.getElements('.ce_powerslide_section'),
            orientation: '<?php echo $this->orientation; ?>',<?php if($this->random): ?>
            random: true,<?php endif; ?>
            slideTimer: <?php echo $this->interval; ?>,
            transitionTime: <?php echo $this->speed; ?>,
            transitionType: '<?php echo $this->transition; ?>'<?php if($this->buttons): ?>,
            prevBtn: new Element('a', {'class':'ce_powerslide_button ce_powerslide_previous', html:'<span>Previous</span>'}).inject(powerslideContainer, 'before'),
            nextBtn: new Element('a', {'class':'ce_powerslide_button ce_powerslide_next', html:'<span>Next</span>'}).inject(powerslideContainer, 'before')<?php endif; ?><?php if($this->position): ?>,
            numNavActive: true,
            numNavHolder: new Element('ul', {'class':'ce_powerslide_position'}).inject(powerslideContainer, 'before')<?php endif; ?><?php if($this->previews): ?>,
            navItems: document.getElements('.ce_powerslide_preview'),
            navEvent: '<?php echo $this->navEvent; ?>'<?php endif; ?>
    });
    powerslide<?php echo $this->sliderId; ?>.start();

    new MooSwipe(powerslideContainer, {
        onSwipeLeft: function() {
            if (powerslide<?php echo $this->sliderId; ?>.isSliding == 0) {
                powerslide<?php echo $this->sliderId; ?>.direction = 1;
                powerslide<?php echo $this->sliderId; ?>.slideIt();
            }
        },
        onSwipeRight: function() {
            if (powerslide<?php echo $this->sliderId; ?>.isSliding == 0) {
                powerslide<?php echo $this->sliderId; ?>.direction = 0;
                powerslide<?php echo $this->sliderId; ?>.slideIt();
            }
        }
    });
});

<?php endif; ?>

/* Modernizr 2.6.2 (Custom Build) | MIT & BSD
 * Build: http://modernizr.com/download/#-csstransitions-testprop-testallprops-domprefixes
 */
;window.Modernizr=function(a,b,c){function w(a){i.cssText=a}function x(a,b){return w(prefixes.join(a+";")+(b||""))}function y(a,b){return typeof a===b}function z(a,b){return!!~(""+a).indexOf(b)}function A(a,b){for(var d in a){var e=a[d];if(!z(e,"-")&&i[e]!==c)return b=="pfx"?e:!0}return!1}function B(a,b,d){for(var e in a){var f=b[a[e]];if(f!==c)return d===!1?a[e]:y(f,"function")?f.bind(d||b):f}return!1}function C(a,b,c){var d=a.charAt(0).toUpperCase()+a.slice(1),e=(a+" "+m.join(d+" ")+d).split(" ");return y(b,"string")||y(b,"undefined")?A(e,b):(e=(a+" "+n.join(d+" ")+d).split(" "),B(e,b,c))}var d="2.6.2",e={},f=b.documentElement,g="modernizr",h=b.createElement(g),i=h.style,j,k={}.toString,l="Webkit Moz O ms",m=l.split(" "),n=l.toLowerCase().split(" "),o={},p={},q={},r=[],s=r.slice,t,u={}.hasOwnProperty,v;!y(u,"undefined")&&!y(u.call,"undefined")?v=function(a,b){return u.call(a,b)}:v=function(a,b){return b in a&&y(a.constructor.prototype[b],"undefined")},Function.prototype.bind||(Function.prototype.bind=function(b){var c=this;if(typeof c!="function")throw new TypeError;var d=s.call(arguments,1),e=function(){if(this instanceof e){var a=function(){};a.prototype=c.prototype;var f=new a,g=c.apply(f,d.concat(s.call(arguments)));return Object(g)===g?g:f}return c.apply(b,d.concat(s.call(arguments)))};return e}),o.csstransitions=function(){return C("transition")};for(var D in o)v(o,D)&&(t=D.toLowerCase(),e[t]=o[D](),r.push((e[t]?"":"no-")+t));return e.addTest=function(a,b){if(typeof a=="object")for(var d in a)v(a,d)&&e.addTest(d,a[d]);else{a=a.toLowerCase();if(e[a]!==c)return e;b=typeof b=="function"?b():b,typeof enableClasses!="undefined"&&enableClasses&&(f.className+=" "+(b?"":"no-")+a),e[a]=b}return e},w(""),h=j=null,e._version=d,e._domPrefixes=n,e._cssomPrefixes=m,e.testProp=function(a){return A([a])},e.testAllProps=C,e}(this,this.document);
//--><!]]>
</script>
<?php endif; ?>