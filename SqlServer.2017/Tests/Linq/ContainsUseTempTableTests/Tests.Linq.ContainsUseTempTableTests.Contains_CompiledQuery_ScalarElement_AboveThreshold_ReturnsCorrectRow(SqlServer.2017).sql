-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_9c59ba32ee69]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9c59ba32ee69](item)

-- SqlServer.2017

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_9c59ba32ee69] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_9c59ba32ee69]

