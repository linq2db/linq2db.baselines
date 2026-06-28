-- SqlCe

SELECT
	[p].[PersonID],
	[pt].[PersonID] as [PersonID_1],
	[d].[Taxonomy]
FROM
	[Person] [p]
		CROSS JOIN [Patient] [pt]
		CROSS JOIN [Doctor] [d]
ORDER BY
	[p].[PersonID],
	[pt].[PersonID],
	[d].[Taxonomy]

