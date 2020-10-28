BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 2) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 2), Round([p].[MoneyValue] / 2, 2) * 2, Round([p].[MoneyValue], 2))
FROM
	[LinqDataTypes] [p]
WHERE
	(IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 2) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 2), Round([p].[MoneyValue] / 2, 2) * 2, Round([p].[MoneyValue], 2)) <> 0 OR IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 2) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 2), Round([p].[MoneyValue] / 2, 2) * 2, Round([p].[MoneyValue], 2)) IS NULL) AND
	(IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 2) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 2), Round([p].[MoneyValue] / 2, 2) * 2, Round([p].[MoneyValue], 2)) <> 7 OR IIF([p].[MoneyValue] * 2 = Round([p].[MoneyValue] * 2, 2) AND [p].[MoneyValue] <> Round([p].[MoneyValue], 2), Round([p].[MoneyValue] / 2, 2) * 2, Round([p].[MoneyValue], 2)) IS NULL)

