﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Int(Log([p].[MoneyValue]) / 2.3025850929940459) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0.10000000000000001 OR [t].[c1] IS NULL)

