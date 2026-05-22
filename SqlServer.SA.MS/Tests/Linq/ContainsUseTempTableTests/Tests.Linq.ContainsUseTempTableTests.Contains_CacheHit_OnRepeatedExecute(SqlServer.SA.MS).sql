-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_bb907afcf73d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_bb907afcf73d](item)

-- SqlServer.SA.MS SqlServer.2019

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
			[tempdb]..[#T_bb907afcf73d] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_bb907afcf73d]

-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_bb907afcf73d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_bb907afcf73d](item)

-- SqlServer.SA.MS SqlServer.2019

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
			[tempdb]..[#T_bb907afcf73d] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_bb907afcf73d]

