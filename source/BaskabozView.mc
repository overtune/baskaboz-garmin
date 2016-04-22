// https://github.com/adde/connectiq-zwave-remote/blob/master/source/ZWaveRemoteREST.mc

using Toybox.WatchUi as Ui;
using Toybox.System as Sys;
using Toybox.Timer as Timer;

class BaskabozView extends Ui.View {

	var lightOnImg, lightOffImg, isLightOn, this;

    function initialize() {
    	isLightOn = true;
        View.initialize();
    }

    //! Load your resources here
    function onLayout(dc) {
    	this = dc;

        setLayout(Rez.Layouts.MainLayout(dc));

		lightOnImg = Ui.loadResource(Rez.Drawables.lightOn);
		lightOffImg = Ui.loadResource(Rez.Drawables.lightOff);
    }

	function toggle() {
		this.clear();

		if (isLightOn == false) {
			this.drawBitmap(67, 45, lightOnImg);
			isLightOn = true;
		} else {
			this.drawBitmap(67, 45, lightOffImg);
			isLightOn = false;
		}
	}

    //! Called when this View is brought to the foreground. Restore
    //! the state of this View and prepare it to be shown. This includes
    //! loading resources into memory.
    function onShow() {
		
    }

    //! Update the view
    function onUpdate(dc) {
    	var loadTimer = new Timer.Timer();
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
        dc.setColor(dc.COLOR_WHITE, dc.COLOR_BLACK);
        dc.drawText(105, 70, dc.FONT_LARGE, "Laddar...", dc.TEXT_JUSTIFY_CENTER);

		loadTimer.start(method(:lightOn), 2000);        
    }

	function lightOn() {
		this.clear();
		this.drawBitmap(67, 45, lightOnImg);
	}

    //! Called when this View is removed from the screen. Save the
    //! state of this View here. This includes freeing resources from
    //! memory.
    function onHide() {
    }

}