-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_ddd55630a6a0]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_ddd55630a6a0](item)

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
			[tempdb]..[#T_ddd55630a6a0] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_ddd55630a6a0] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_ddd55630a6a0]

