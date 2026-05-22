-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_f084ff3b05c1]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_f084ff3b05c1](item)

-- SqlServer.2019

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
			[tempdb]..[#T_f084ff3b05c1] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_f084ff3b05c1]

-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_f084ff3b05c1]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_f084ff3b05c1](item)

-- SqlServer.2019

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
			[tempdb]..[#T_f084ff3b05c1] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_f084ff3b05c1]

