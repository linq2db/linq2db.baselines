﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	IIF([p].[MoneyValue] - Floor([p].[MoneyValue]) = 0.5 AND Floor([p].[MoneyValue]) % 2 = 0, Floor([p].[MoneyValue]), Round([p].[MoneyValue], 0))
FROM
	[LinqDataTypes] [p]
WHERE
	IIF([p].[MoneyValue] - Floor([p].[MoneyValue]) = 0.5 AND Floor([p].[MoneyValue]) % 2 = 0, Floor([p].[MoneyValue]), Round([p].[MoneyValue], 0)) <> 0

