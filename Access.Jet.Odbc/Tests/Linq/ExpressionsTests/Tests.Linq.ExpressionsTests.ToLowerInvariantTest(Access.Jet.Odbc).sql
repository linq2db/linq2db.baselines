BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	LCase([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	LCase([p].[Taxonomy]) = 'psychiatry' AND LCase([p].[Taxonomy]) IS NOT NULL

