﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
	([t_1].[c1] <> 0.10000000000000001 OR [t_1].[c1] IS NULL)

