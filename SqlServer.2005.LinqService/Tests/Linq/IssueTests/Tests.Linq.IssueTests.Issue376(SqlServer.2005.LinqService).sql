BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[t1].[PersonID],
	[a_Doctor].[PersonID],
	[a_Doctor].[Taxonomy]
FROM
	[Person] [t1]
		LEFT JOIN [Doctor] [a_Doctor] ON [t1].[PersonID] = [a_Doctor].[PersonID]
WHERE
	LEN([a_Doctor].[Taxonomy] + N'.') >= 1 OR [a_Doctor].[Taxonomy] IS NULL

