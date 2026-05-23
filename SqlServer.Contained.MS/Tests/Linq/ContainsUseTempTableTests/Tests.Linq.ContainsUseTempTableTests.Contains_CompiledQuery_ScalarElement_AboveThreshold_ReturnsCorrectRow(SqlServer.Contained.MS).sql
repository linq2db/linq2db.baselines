-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_63d37ad1826b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_63d37ad1826b](item)

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_63d37ad1826b] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_63d37ad1826b]

