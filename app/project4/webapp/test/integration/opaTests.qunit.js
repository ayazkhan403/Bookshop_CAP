sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/infy/project4/test/integration/FirstJourney',
		'com/infy/project4/test/integration/pages/BooksList',
		'com/infy/project4/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/infy/project4') + '/index.html'
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