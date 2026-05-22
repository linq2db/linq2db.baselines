-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_d434e4d31f2e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d434e4d31f2e](item)

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
			[tempdb]..[#T_d434e4d31f2e] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_d434e4d31f2e]

-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_d434e4d31f2e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d434e4d31f2e](item)

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
			[tempdb]..[#T_d434e4d31f2e] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_d434e4d31f2e]

