﻿BeforeExecute
-- SqlServer.2014

SELECT
	IIF([t2].[SUM_1] < 0, 1, 0),
	[t2].[SUM_1] + 8,
	[t2].[SUM_1] + [t2].[SUM_1]
FROM
	(
		SELECT
			(
				SELECT
					SUM([t1].[MoneyValue])
				FROM
					[LinqDataTypes] [t1]
			) as [SUM_1]
		FROM
			[LinqDataTypes] [q]
	) [t2]

