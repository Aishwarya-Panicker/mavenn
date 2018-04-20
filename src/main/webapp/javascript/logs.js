
function logsend(target) {
    var eventData = data('click');
    //eventData['destination'] = this.getAttribute('href');
    
    logEvent(eventData);
}
 
// Send an AJAX payload to log the event
function logEvent(data) {
	
	var request = new XMLHttpRequest();
    request.open('POST', 'http://172.17.0.1:8090/abcd', true);
    request.setRequestHeader('Content-Type', 'application/json');
    str=JSON.stringify(eventData);
    //alert(data)
    request.send(str);
    
}
 
// Get the data you want log
function data(type) {
    return {
        "type": type,
        //location: window.location.href,
        "referer": document.referrer,
        "language": window.navigator.userLanguage || window.navigator.language,
        "width": screen.width,
        "height": screen.height,
        "local_time": new Date(),
        
    };
}
 