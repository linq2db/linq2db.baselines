BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	(
		SELECT TOP (1)
			[d].[Taxonomy]
		FROM
			[Doctor] [d]
		WHERE
			[t1].[PersonID] = [d].[PersonID]
	)
FROM
	[Doctor] [t1]
GROUP BY
	[t1].[PersonID]

