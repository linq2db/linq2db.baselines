﻿BeforeExecute
-- SqlServer.2017

SELECT
	IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1), Round([p].[MoneyValue] / 2, 1) * 2, Round([p].[MoneyValue], 1))
FROM
	[LinqDataTypes] [p]
WHERE
	IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1), Round([p].[MoneyValue] / 2, 1) * 2, Round([p].[MoneyValue], 1)) <> 0 AND
	IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 1) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 1), Round([p].[MoneyValue] / 2, 1) * 2, Round([p].[MoneyValue], 1)) <> 7

