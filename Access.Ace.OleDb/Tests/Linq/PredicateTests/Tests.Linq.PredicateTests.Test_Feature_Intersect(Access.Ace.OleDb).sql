-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS[r].[One]

