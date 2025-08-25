BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	LCase([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	LCase([p].[Taxonomy]) = 'psychiatry'

