-- SqlServer.2022

SELECT
	[t1].[Id],
	(
		SELECT
			COUNT(*) as [PersonsCount]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = [t1].[Id]
	)
FROM
	[Issue3472TableDC] [t1]

