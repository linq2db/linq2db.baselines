-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_ab6d694f17aa]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_ab6d694f17aa](item)

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_ab6d694f17aa] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_ab6d694f17aa]

