﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			IIF([t].[MoneyValue] > 5.1, [t].[MoneyValue], 5.1) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

