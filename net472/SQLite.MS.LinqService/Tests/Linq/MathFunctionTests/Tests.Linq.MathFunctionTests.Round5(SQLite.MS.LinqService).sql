﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Round([p].[MoneyValue], 0) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

