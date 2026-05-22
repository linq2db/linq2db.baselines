-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_9152b8c35e9f]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9152b8c35e9f](item)

-- SqlServer.SA SqlServer.2019

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
			[tempdb]..[#T_9152b8c35e9f] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_9152b8c35e9f] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_9152b8c35e9f]

