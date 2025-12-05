-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	DECODE([r].[One], [r].[One], 0, 1) = 0

