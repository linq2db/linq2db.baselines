BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[Taxonomy]
FROM
	[Doctor] [p]
WHERE
	LCase([p].[Taxonomy]) = 'psychiatry'

