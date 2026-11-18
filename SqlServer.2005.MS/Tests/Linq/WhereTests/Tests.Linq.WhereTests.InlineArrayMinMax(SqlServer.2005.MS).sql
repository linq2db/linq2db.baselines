-- SqlServer.2005.MS SqlServer.2005
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	(
		SELECT
			MAX([t1].[item])
		FROM
			(
				SELECT [p].[PersonID] AS [item]
				UNION ALL
				SELECT 2) [t1]
	) = 2

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	(
		SELECT
			MIN([t1].[item])
		FROM
			(
				SELECT [p].[PersonID] AS [item]
				UNION ALL
				SELECT 2) [t1]
	) = 2

