# A MVVP architecture example 

### What's MVVP
-   Models --- responsible for the domain data or a [data access layer](https://en.wikipedia.org/wiki/Data_access_layer) which manipulates the data. 
-   View --- responsible for the presentation layer (GUI), for iOS environment think of everything starting with 'UI' prefix.
-   ViewState --- the state of the view, it is changed by the Presenter and then rendered in the view.
-   Presenter --- the glue or the mediator between the Model and the View, in general responsible for altering the Modelby reacting to the user's actions performed on the View and updating the View with changes from the Model.
