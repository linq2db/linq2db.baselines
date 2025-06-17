BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[FeatureTable] [r]
WHERE
	EXISTS(
		SELECT DISTINCT
			[r].[One]
		WHERE
			EXISTS(
				SELECT
					1
				WHERE
					[r].[One] = [r].[One] OR [r].[One] IS NULL AND [r].[One] IS NULL
			)
	)

