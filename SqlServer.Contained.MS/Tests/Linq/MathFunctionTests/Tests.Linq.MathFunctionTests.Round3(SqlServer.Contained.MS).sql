﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			IIF([t].[MoneyValue] * 2 = Round([t].[MoneyValue] * 2, 1) AND [t].[MoneyValue] <> Round([t].[MoneyValue], 1), Round([t].[MoneyValue] / 2, 1) * 2, Round([t].[MoneyValue], 1)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	([t_1].[c1] <> 0 OR [t_1].[c1] IS NULL) AND ([t_1].[c1] <> 7 OR [t_1].[c1] IS NULL)

