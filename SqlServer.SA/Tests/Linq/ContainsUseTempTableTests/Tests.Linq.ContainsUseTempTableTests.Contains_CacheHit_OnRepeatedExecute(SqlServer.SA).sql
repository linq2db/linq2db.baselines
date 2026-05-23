-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_cea1c5538c3a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_cea1c5538c3a](item)

-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	[r].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			[tempdb]..[#T_cea1c5538c3a] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_cea1c5538c3a]

-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_cea1c5538c3a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_cea1c5538c3a](item)

-- SqlServer.SA SqlServer.2019

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	[r].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			[tempdb]..[#T_cea1c5538c3a] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_cea1c5538c3a]

