-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_5e80294e7a3c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_5e80294e7a3c](item)

-- SqlServer.SA.MS SqlServer.2019

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
			[tempdb]..[#T_5e80294e7a3c] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_5e80294e7a3c]

-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_5e80294e7a3c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_5e80294e7a3c](item)

-- SqlServer.SA.MS SqlServer.2019

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
			[tempdb]..[#T_5e80294e7a3c] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_5e80294e7a3c]

