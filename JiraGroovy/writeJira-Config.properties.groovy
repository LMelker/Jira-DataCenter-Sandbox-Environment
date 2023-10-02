import java.io.File


new File('jira-config.properties').withWriter('utf-8')
{   writer ->
        writer.writeLine 'jira.websudo.is.disabled = true'
        writer.writeLine 'jira.enabled.dark.features = true'
        writer.writeLine 'jira.project.description.html.enabled = true'
        writer.writeLine 'jira.custom.field.html.enabled = true'
        writer.writeLine 'jira.user.avatar.gravatar.enabled = false' 
        writer.writeLine 'jira.date.picker.java.format = yyyy-MM-dd'
        writer.writeLine 'jira.date.picker.javascript.format = %Y-%m-%d'
        writer.writeLine 'jira.date.time.picker.java.format = yyyy-MM-dd HH:mm'
        writer.writeLine 'jira.date.time.picker.javascript.format = %Y-%m-%d %H:%M' 
        writer.writeLine 'jira.date.time.picker.use.iso8061 = true'
        writer.writeLine 'jira.lf.date.relativize = false'
        writer.writeLine 'jira.lf.date.time = HH:mm'
        writer.writeLine 'jira.lf.date.day = EEEE HH:mm'
        writer.writeLine 'jira.lf.date.complete = YYYY-MM-dd HH:mm:ss'
        writer.writeLine 'jira.lf.date.dmy = YYYY-MM-dd'
        writer.writeLine 'jira.jql.autocomplete.query.delay = 2'
        writer.writeLine 'jira.jql.autocomplete.min.query.length = 3'
        writer.writeLine 'jira.disable.login.gadget = true'



}
