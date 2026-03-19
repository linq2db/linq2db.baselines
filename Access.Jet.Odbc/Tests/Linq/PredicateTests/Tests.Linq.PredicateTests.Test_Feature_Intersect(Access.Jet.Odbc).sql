-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS[r].[One]

