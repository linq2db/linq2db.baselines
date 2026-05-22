-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_9778381d19d2]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9778381d19d2](item)

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
			[tempdb]..[#T_9778381d19d2] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_9778381d19d2]

-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_9778381d19d2]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9778381d19d2](item)

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
			[tempdb]..[#T_9778381d19d2] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_9778381d19d2]

