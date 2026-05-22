-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_c5158fff6308]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c5158fff6308](item)

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_c5158fff6308] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_c5158fff6308]

