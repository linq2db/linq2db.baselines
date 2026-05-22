-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#T_47e03c67c777]
(
	[item] Int NOT NULL
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#T_47e03c67c777]
(
	[item]
)
SELECT 1 UNION ALL
SELECT 2 UNION ALL
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL
SELECT 6 UNION ALL
SELECT 7 UNION ALL
SELECT 8 UNION ALL
SELECT 9 UNION ALL
SELECT 10

-- SqlServer.2005.MS SqlServer.2005

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
			[tempdb]..[#T_47e03c67c777] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_47e03c67c777]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_47e03c67c777]

-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#T_47e03c67c777]
(
	[item] Int NOT NULL
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#T_47e03c67c777]
(
	[item]
)
SELECT 1 UNION ALL
SELECT 2 UNION ALL
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL
SELECT 6 UNION ALL
SELECT 7 UNION ALL
SELECT 8 UNION ALL
SELECT 9 UNION ALL
SELECT 10

-- SqlServer.2005.MS SqlServer.2005

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
			[tempdb]..[#T_47e03c67c777] [t1]
	)
ORDER BY
	[r].[Id]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_47e03c67c777]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_47e03c67c777]

