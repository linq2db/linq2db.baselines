﻿BeforeExecute
-- SqlServer.2014

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Floor(Exp(Convert(Float, [t].[MoneyValue]))) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0.10000000000000001

