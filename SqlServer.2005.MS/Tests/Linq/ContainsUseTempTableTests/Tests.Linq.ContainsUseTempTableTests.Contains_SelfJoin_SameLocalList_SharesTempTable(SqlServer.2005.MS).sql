-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [tempdb]..[#T_ada6acf25275]
(
	[item] Int NOT NULL
)

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [tempdb]..[#T_ada6acf25275]
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
SELECT 10 UNION ALL
SELECT 11 UNION ALL
SELECT 12 UNION ALL
SELECT 13 UNION ALL
SELECT 14 UNION ALL
SELECT 15

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[a].[Id],
	[b].[Id]
FROM
	[ContainsTempTableTestRow] [a],
	[ContainsTempTableTestRow] [b]
WHERE
	[a].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			[tempdb]..[#T_ada6acf25275] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			[tempdb]..[#T_ada6acf25275] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_ada6acf25275]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_ada6acf25275]

