BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[Taxonomy]
FROM
	[Doctor] [p]
WHERE
	UCase([p].[Taxonomy]) = 'psychiatry'

