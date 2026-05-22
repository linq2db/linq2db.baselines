-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_1eb377d14382]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_1eb377d14382](item)

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
			[tempdb]..[#T_1eb377d14382] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_1eb377d14382]

-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [tempdb]..[#T_1eb377d14382]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_1eb377d14382](item)

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
			[tempdb]..[#T_1eb377d14382] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_1eb377d14382]

