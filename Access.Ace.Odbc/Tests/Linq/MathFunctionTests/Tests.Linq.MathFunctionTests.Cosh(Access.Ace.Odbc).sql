﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Int(((Exp([p].[MoneyValue] / 15) + Exp(-([p].[MoneyValue] / 15))) / 2) * 15) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0.10000000000000001

