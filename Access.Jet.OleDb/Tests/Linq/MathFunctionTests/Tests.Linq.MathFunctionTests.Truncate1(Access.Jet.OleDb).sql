﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			IIF([p].[MoneyValue] >= 0, Int([p].[MoneyValue]), -Int(-[p].[MoneyValue])) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.1

