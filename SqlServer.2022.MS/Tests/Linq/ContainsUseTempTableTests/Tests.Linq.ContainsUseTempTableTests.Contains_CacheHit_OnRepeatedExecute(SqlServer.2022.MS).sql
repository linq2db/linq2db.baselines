-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_9e8f1f5f8807]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9e8f1f5f8807](item)

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
			[tempdb]..[#T_9e8f1f5f8807] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_9e8f1f5f8807]

-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_9e8f1f5f8807]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9e8f1f5f8807](item)

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
			[tempdb]..[#T_9e8f1f5f8807] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_9e8f1f5f8807]

