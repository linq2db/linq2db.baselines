-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_d18fd28c0b7c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d18fd28c0b7c](item)

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
			[tempdb]..[#T_d18fd28c0b7c] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_d18fd28c0b7c]

-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_d18fd28c0b7c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d18fd28c0b7c](item)

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
			[tempdb]..[#T_d18fd28c0b7c] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_d18fd28c0b7c]

