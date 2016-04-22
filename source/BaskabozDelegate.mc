using Toybox.WatchUi as Ui;

class BaskabozDelegate extends Ui.InputDelegate
{
	hidden var currentView;

	//! Constructor
    //! @param courseDto The course DTO to parse
    function initialize(view) {
		currentView = view;
    }

    // Click event
    // @param evt Event object with click information
    // @return true if handled, false otherwise
    function onTap( evt ) {
    	currentView.toggle();
    	return true;
    }
}