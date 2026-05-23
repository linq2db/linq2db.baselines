-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_a2da80e703b2]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a2da80e703b2](item)

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_a2da80e703b2] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_a2da80e703b2]

