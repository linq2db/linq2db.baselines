-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_dd1d8ff1c04c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_dd1d8ff1c04c](item)

-- SqlServer.2025.MS SqlServer.2025

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
			[tempdb]..[#T_dd1d8ff1c04c] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_dd1d8ff1c04c]

-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_dd1d8ff1c04c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_dd1d8ff1c04c](item)

-- SqlServer.2025.MS SqlServer.2025

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
			[tempdb]..[#T_dd1d8ff1c04c] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_dd1d8ff1c04c]

