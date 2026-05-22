-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_97fb2a27b167]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_97fb2a27b167](item)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_97fb2a27b167] [t1]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_97fb2a27b167]

