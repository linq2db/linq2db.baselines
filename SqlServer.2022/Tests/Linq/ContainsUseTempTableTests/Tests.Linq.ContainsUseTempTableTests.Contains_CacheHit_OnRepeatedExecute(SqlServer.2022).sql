-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_8e1b27452a46]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_8e1b27452a46](item)

-- SqlServer.2022

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
			[tempdb]..[#T_8e1b27452a46] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_8e1b27452a46]

-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_8e1b27452a46]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_8e1b27452a46](item)

-- SqlServer.2022

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
			[tempdb]..[#T_8e1b27452a46] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_8e1b27452a46]

