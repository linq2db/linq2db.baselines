﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Sgn([p].[MoneyValue]) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0

