-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_9635ff50f133]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9635ff50f133](item)

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
			[tempdb]..[#T_9635ff50f133] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_9635ff50f133]

-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_9635ff50f133]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9635ff50f133](item)

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
			[tempdb]..[#T_9635ff50f133] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_9635ff50f133]

