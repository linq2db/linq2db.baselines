BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[t1].[PersonID],
	[a_Doctor].[PersonID],
	[a_Doctor].[Taxonomy]
FROM
	[Person] [t1]
		LEFT JOIN [Doctor] [a_Doctor] ON ([t1].[PersonID] = [a_Doctor].[PersonID])
WHERE
	Len([a_Doctor].[Taxonomy]) >= 0 OR [a_Doctor].[Taxonomy] IS NULL

