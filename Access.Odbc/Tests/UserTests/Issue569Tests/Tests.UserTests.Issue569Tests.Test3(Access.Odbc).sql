BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[PersonID],
	[pt].[PersonID],
	[d].[Taxonomy]
FROM
	[Person] [t1],
	[Patient] [pt],
	[Doctor] [d]
ORDER BY
	[t1].[PersonID],
	[pt].[PersonID],
	[d].[Taxonomy]

