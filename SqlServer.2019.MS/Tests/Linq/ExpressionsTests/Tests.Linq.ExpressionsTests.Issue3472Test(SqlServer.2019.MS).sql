-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	(
		SELECT
			COUNT(*)
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = [t1].[Id]
	)
FROM
	[Issue3472TableDC] [t1]

