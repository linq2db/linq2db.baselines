-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_85f251ad00c1]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_85f251ad00c1](item)

-- SqlServer.2022

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
			[tempdb]..[#T_85f251ad00c1] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_85f251ad00c1] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_85f251ad00c1]

