﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Cast([t].[MoneyValue] as Real) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] > 0

