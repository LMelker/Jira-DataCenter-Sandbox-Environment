import org.apache.tomcat.util.net.Acceptor
import groovyx.net.http.HTTPBuilder
import groovyx.net.http.Method
import groovyx.net.http.ContentType
import groovy.json.JsonBuilder
import org.apache.log4j.Level

log.setLevel(Level.DEBUG) //remove this after running and manually update your log levels in jira to keep log file managable
log.info "Starting posfunction"

String answer = "It's not changed."

def apiBase = "http://jira.internal"
def apiPath = "/rest/api/2/reindex?type=BACKGROUND_PREFERRED"
//def apiPath = "/status"

def payload = [xx:["" as String]]

def payLoadJson = new JsonBuilder(payload).toPrettyString()
def httpBuilder = new HTTPBuilder(apiBase)


def response = httpBuilder.request(Method.POST, ContentType.JSON){
   uri.path = apiPath
   headers.Authorization = "Bearer MTA1OTQ5NjY2NTEwOnHXrMYT/OEXGZd38Ri9tlpZiiNy"
   headers.Accept = "application/json"
   //body = [null]
   response.success = { response, json ->
      log.info "httprequest successful"
      answer = json
      return json
    
   }
   response.failure = { resp, data ->
      log.error " httprequest failed: $data"
      return "inte bra..."
   }
}
log.info "http request finsished"
answer