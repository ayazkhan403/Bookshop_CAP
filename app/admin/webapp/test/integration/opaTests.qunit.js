sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/infy/admin/test/integration/FirstJourney',
		'com/infy/admin/test/integration/pages/BooksList',
		'com/infy/admin/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/infy/admin') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);