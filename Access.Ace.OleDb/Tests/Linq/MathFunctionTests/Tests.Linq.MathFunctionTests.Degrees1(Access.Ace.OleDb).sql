﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Int([p].[MoneyValue] * 57.29577951308237993927443245) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.1

