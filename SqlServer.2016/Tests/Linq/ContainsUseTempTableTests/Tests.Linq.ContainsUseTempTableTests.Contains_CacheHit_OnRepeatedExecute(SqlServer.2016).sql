-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_cca403b1033a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_cca403b1033a](item)

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
			[tempdb]..[#T_cca403b1033a] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_cca403b1033a]

-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_cca403b1033a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_cca403b1033a](item)

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
			[tempdb]..[#T_cca403b1033a] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_cca403b1033a]

