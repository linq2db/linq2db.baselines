-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_7777a69fc4c5]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_7777a69fc4c5](item)

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_7777a69fc4c5] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_7777a69fc4c5]

