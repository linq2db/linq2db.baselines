BeforeExecute
-- SqlCe

SELECT
	Convert(Decimal, Floor(CASE
		WHEN [t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Convert(Int, Floor([t].[MoneyValue])) % 2 = 0
			THEN Floor([t].[MoneyValue])
		ELSE Round([t].[MoneyValue], 0)
	END))
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(Decimal, Floor(CASE
		WHEN [t].[MoneyValue] - Floor([t].[MoneyValue]) = 0.5 AND Convert(Int, Floor([t].[MoneyValue])) % 2 = 0
			THEN Floor([t].[MoneyValue])
		ELSE Round([t].[MoneyValue], 0)
	END)) > 0

