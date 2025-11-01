-- SqlCe

SELECT
	[t1].[PersonID] as [ID],
	[a_Doctor].[PersonID],
	[a_Doctor].[Taxonomy]
FROM
	[Person] [t1]
		LEFT JOIN [Doctor] [a_Doctor] ON [t1].[PersonID] = [a_Doctor].[PersonID]
WHERE
	LEN([a_Doctor].[Taxonomy] + '.') >= 1 OR [a_Doctor].[Taxonomy] IS NULL

