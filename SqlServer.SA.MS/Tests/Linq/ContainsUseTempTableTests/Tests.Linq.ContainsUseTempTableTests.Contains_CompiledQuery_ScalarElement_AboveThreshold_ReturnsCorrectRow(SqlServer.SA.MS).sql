-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_c3327a76593f]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c3327a76593f](item)

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_c3327a76593f] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_c3327a76593f]

