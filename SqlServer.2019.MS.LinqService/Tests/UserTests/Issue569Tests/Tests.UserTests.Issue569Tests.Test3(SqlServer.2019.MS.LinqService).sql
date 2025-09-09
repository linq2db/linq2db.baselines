BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[PersonID],
	[pt].[PersonID],
	[d].[Taxonomy]
FROM
	[Person] [p]
		CROSS JOIN [Patient] [pt]
		CROSS JOIN [Doctor] [d]
ORDER BY
	[p].[PersonID],
	[pt].[PersonID],
	[d].[Taxonomy]

