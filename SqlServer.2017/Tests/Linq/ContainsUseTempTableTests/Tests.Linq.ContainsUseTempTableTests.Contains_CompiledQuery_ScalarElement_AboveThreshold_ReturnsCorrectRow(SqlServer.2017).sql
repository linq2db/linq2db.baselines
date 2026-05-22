-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_773e153fea0a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_773e153fea0a](item)

-- SqlServer.2017

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_773e153fea0a] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_773e153fea0a]

