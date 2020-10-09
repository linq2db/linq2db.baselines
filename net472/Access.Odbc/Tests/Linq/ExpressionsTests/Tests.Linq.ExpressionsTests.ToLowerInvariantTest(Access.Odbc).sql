BeforeExecute
-- SQLite.Classic SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	LCase([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	LCase([p].[Taxonomy]) = 'psychiatry'

