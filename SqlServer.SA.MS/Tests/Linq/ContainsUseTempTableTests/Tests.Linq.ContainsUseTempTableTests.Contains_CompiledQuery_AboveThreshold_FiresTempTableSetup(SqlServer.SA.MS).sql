-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_1cc9aeb9679a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_1cc9aeb9679a](item)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_1cc9aeb9679a] [t1]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_1cc9aeb9679a]

