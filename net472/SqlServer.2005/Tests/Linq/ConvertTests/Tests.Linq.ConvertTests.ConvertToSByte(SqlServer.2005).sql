BeforeExecute
-- SqlServer.2005

SELECT
	Convert(TinyInt, CASE
		WHEN [t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Floor([t].[MoneyValue]) % 2 = 0
			THEN Floor([t].[MoneyValue])
		ELSE Round([t].[MoneyValue], 0)
	END)
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(TinyInt, CASE
		WHEN [t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Floor([t].[MoneyValue]) % 2 = 0
			THEN Floor([t].[MoneyValue])
		ELSE Round([t].[MoneyValue], 0)
	END) > 0

