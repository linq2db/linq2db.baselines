-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_79c33d1917fa]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_79c33d1917fa](item)

-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_79c33d1917fa] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_79c33d1917fa]

