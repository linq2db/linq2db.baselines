-- Access.Jet.Odbc AccessODBC
SELECT
	[p].[PersonID],
	[pt].[PersonID] as [PersonID_1],
	[d].[Taxonomy]
FROM
	[Person] [p],
	[Patient] [pt],
	[Doctor] [d]
ORDER BY
	[p].[PersonID],
	[pt].[PersonID],
	[d].[Taxonomy]

