﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	IIF([p].[MoneyValue] < 5, [p].[MoneyValue], 5)
FROM
	[LinqDataTypes] [p]
WHERE
	IIF([p].[MoneyValue] < 5, [p].[MoneyValue], 5) <> 0

