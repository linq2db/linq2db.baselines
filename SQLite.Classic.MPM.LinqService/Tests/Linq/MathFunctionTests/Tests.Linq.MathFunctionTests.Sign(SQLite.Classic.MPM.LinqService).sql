﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Sign([t].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[c1] <> 0 OR [t_1].[c1] IS NULL)

