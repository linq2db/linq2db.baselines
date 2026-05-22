-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_03fece4c52a6]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_03fece4c52a6](item)

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_03fece4c52a6] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_03fece4c52a6]

