-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_785bd585b041]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_785bd585b041](item)

-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_785bd585b041] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_785bd585b041]

