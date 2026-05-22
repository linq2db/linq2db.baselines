-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_189a6734e235]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_189a6734e235](item)

-- SqlServer.2022.MS SqlServer.2022

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
			[tempdb]..[#T_189a6734e235] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_189a6734e235]

-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_189a6734e235]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_189a6734e235](item)

-- SqlServer.2022.MS SqlServer.2022

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
			[tempdb]..[#T_189a6734e235] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_189a6734e235]

