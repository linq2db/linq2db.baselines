-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_342a980caf9b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_342a980caf9b](item)

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_342a980caf9b] [t1]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_342a980caf9b]

