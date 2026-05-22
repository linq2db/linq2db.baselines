-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_9a1fcd82816d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9a1fcd82816d](item)

-- SqlServer.2017

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
			[tempdb]..[#T_9a1fcd82816d] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_9a1fcd82816d]

-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_9a1fcd82816d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9a1fcd82816d](item)

-- SqlServer.2017

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
			[tempdb]..[#T_9a1fcd82816d] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_9a1fcd82816d]

