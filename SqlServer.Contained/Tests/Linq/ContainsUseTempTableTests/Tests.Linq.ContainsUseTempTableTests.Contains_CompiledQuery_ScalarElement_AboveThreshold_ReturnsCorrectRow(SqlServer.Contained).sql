-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_55cf57a79740]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_55cf57a79740](item)

-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_55cf57a79740] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_55cf57a79740]

