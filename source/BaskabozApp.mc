using Toybox.Application as App;

class BaskabozApp extends App.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    //! onStart() is called on application start up
    function onStart() {
    }

    //! onStop() is called when your application is exiting
    function onStop() {
    }

    //! Return the initial view of your application here
    function getInitialView() {
    	var view = new BaskabozView();
    	var delegate = new BaskabozDelegate(view);
        return [ view, delegate ];
    }

}