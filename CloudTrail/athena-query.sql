SELECT useridentity.userName, eventtime, eventsource, eventname, requestparameters

FROM cloudtrail_logs_monitoring####

LIMIT 30
