﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			DatePart('yyyy', [g_1].[DateTimeValue]) as [Key_1]
		FROM
			[LinqDataTypes] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

