public class AWSImagePDF {
    public String getResourceUrl() {
        HTTPRequest req=new HTTPRequest(); 
        req.setEndpoint('https://document-api.pillartopost.com/uat/file?key=af731f8377618cd6a60b7748115824af:7ae430a2eb8b922d7ab35ec8d15033e2bc657336f1e7ed52f33d1e363f31067f6e7c9482affce4873db9b6de5814e9d270b0adff16c7744805ca3088d8baaebc019ce1921448b0868b6665b2ad401783bfa469331adc63f950177f4b1caf7015&path=Jake_Barry7AAE/Inspection_322622-1/pictures/comment_B12CDC91-A518-430D-8C5E-FCFD0379707B.png'); 
        req.setMethod('GET');
        
        Http http = new Http(); 
        HTTPResponse res = http.send(req);
        System.debug(res.getStatus());
        System.debug(res.getHeader('Location'));
        while (res.getStatusCode() == 302) {
            req.setEndpoint(res.getHeader('Location'));
            res = new Http().send(req);
        } 
        return req.getEndpoint();
    }
}