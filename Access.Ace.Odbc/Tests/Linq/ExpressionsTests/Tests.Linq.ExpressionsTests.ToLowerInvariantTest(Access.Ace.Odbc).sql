-- Access.Ace.Odbc AccessODBC

SELECT
	LCase([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	LCase([p].[Taxonomy]) = 'psychiatry'

