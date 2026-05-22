-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_7aec9bc75258]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_7aec9bc75258](item)

-- SqlServer.2025

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
			[tempdb]..[#T_7aec9bc75258] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_7aec9bc75258] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_7aec9bc75258]

