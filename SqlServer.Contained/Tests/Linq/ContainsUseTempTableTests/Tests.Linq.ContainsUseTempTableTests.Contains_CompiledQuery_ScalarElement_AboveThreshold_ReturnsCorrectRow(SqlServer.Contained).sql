-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_08a1cdce63a3]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_08a1cdce63a3](item)

-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_08a1cdce63a3] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_08a1cdce63a3]

