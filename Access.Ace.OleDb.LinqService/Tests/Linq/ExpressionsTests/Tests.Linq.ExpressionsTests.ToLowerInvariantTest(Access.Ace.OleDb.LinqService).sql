﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	LCase([p].[Taxonomy])
FROM
	[Doctor] [p]
WHERE
	LCase([p].[Taxonomy]) = 'psychiatry'

