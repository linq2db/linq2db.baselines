﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[t].[MoneyValue] as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	([p].[c1] = True AND [p].[c1] IS NOT NULL)

