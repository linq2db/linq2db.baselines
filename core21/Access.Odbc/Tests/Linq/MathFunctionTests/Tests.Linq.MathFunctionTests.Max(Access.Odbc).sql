﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Iif([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

