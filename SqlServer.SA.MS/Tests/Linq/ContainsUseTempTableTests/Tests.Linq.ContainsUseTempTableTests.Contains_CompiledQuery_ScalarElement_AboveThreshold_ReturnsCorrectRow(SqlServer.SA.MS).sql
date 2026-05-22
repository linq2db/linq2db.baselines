-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_59a1ba877ce3]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_59a1ba877ce3](item)

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_59a1ba877ce3] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_59a1ba877ce3]

