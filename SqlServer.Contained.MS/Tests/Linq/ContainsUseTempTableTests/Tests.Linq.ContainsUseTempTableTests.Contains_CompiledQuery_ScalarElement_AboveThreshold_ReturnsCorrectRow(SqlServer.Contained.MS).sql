-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_8f3bcda8cbf9]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_8f3bcda8cbf9](item)

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_8f3bcda8cbf9] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_8f3bcda8cbf9]

