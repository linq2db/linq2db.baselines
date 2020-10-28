BeforeExecute
-- SqlCe

SELECT
	Floor(Cot(Convert(Float, [p].[MoneyValue]) / 15) * 15)
FROM
	[LinqDataTypes] [p]
WHERE
	(Floor(Cot(Convert(Float, [p].[MoneyValue]) / 15) * 15) <> 0.10000000000000001 OR Floor(Cot(Convert(Float, [p].[MoneyValue]) / 15) * 15) IS NULL)

