﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Int(Exp([p].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0.10000000000000001 OR [t].[c1] IS NULL)

