﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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
			)
	)

