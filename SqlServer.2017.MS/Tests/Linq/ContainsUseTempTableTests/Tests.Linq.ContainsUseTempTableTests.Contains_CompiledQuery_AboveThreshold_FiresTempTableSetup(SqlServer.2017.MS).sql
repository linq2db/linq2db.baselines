-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_2cac70a96b5a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_2cac70a96b5a](item)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_2cac70a96b5a] [t1]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_2cac70a96b5a]

