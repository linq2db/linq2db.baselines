-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_668e5b087f1d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_668e5b087f1d](item)

-- SqlServer.2017

SELECT
	[a].[Id],
	[b].[Id]
FROM
	[ContainsTempTableTestRow] [a],
	[ContainsTempTableTestRow] [b]
WHERE
	[a].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			[tempdb]..[#T_668e5b087f1d] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_668e5b087f1d] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_668e5b087f1d]

