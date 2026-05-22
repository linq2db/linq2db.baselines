-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_7bee0f8b6428]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_7bee0f8b6428](item)

-- SqlServer.2016

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
			[tempdb]..[#T_7bee0f8b6428] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_7bee0f8b6428]

-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_7bee0f8b6428]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_7bee0f8b6428](item)

-- SqlServer.2016

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
			[tempdb]..[#T_7bee0f8b6428] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_7bee0f8b6428]

