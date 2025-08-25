BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	LCase([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	LCase([p].[Taxonomy]) = 'psychiatry'

