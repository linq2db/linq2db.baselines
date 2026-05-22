-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_d37cbc4e229d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d37cbc4e229d](item)

-- SqlServer.2025

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
			[tempdb]..[#T_d37cbc4e229d] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_d37cbc4e229d]

-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_d37cbc4e229d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d37cbc4e229d](item)

-- SqlServer.2025

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
			[tempdb]..[#T_d37cbc4e229d] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_d37cbc4e229d]

