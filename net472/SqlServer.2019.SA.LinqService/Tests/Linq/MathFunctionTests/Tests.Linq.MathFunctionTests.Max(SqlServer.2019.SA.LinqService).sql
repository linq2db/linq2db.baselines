﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	IIF([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1)
FROM
	[LinqDataTypes] [p]
WHERE
	IIF([p].[MoneyValue] > 5.1, [p].[MoneyValue], 5.1) <> 0

