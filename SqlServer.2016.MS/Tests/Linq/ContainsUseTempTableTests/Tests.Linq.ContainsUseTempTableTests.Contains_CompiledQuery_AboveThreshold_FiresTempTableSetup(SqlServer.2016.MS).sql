-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#T_b2baf3fc3fca]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_b2baf3fc3fca](item)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_b2baf3fc3fca] [t1]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_b2baf3fc3fca]

