-- SqlServer.CS.MS SqlServer.2025
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	(
		SELECT
			MAX([t1].[item])
		FROM
			(VALUES
				([p].[PersonID]), (2)
			) [t1]([item])
	) = 2

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	(
		SELECT
			MIN([t1].[item])
		FROM
			(VALUES
				([p].[PersonID]), (2)
			) [t1]([item])
	) = 2

