-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_b563fdadf62b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_b563fdadf62b](item)

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_b563fdadf62b] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_b563fdadf62b]

