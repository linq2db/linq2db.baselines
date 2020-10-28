BeforeExecute
-- SqlCe

SELECT
	Floor(((Exp(Convert(Float, [p].[MoneyValue]) / 15) + Exp(-(Convert(Float, [p].[MoneyValue]) / 15))) / 2) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(((Exp(Convert(Float, [p].[MoneyValue]) / 15) + Exp(-(Convert(Float, [p].[MoneyValue]) / 15))) / 2) * 15) <> 0.10000000000000001 OR Floor(((Exp(Convert(Float, [p].[MoneyValue]) / 15) + Exp(-(Convert(Float, [p].[MoneyValue]) / 15))) / 2) * 15) IS NULL)

