﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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

