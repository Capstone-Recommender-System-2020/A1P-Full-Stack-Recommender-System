Survey.StylesManager.applyTheme("modern");

var surveyJSON = {"pages":[{"name":"page1","elements":[{"type":"checkbox","name":"question1","title":"What are 3 Genres that interest you?","isRequired":true,"choices":[{"value":"item3","text":"Reading"},{"value":"item4","text":"Rhythm"},{"value":"item5","text":"Music"},{"value":"item6","text":"History"},{"value":"item7","text":"Visuals"},{"value":"item8","text":"Classics"},{"value":"item9","text":"Concerts"},{"value":"item10","text":"Singing"}],"maxSelectedChoices":"3"}],"title":"New User Survey"}]}

function sendDataToServer(survey) {
    //send Ajax request to your web server.
    alert("The results are:" + JSON.stringify(survey.data));
}

ReactDOM.render(
    <Survey.Survey json={ surveyJSON } onComplete={ sendDataToServer } />, document.getElementById("surveyContainer"));