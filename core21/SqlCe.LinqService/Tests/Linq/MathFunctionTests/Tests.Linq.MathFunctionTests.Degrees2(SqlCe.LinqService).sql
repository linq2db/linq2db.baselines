BeforeExecute
-- SqlCe

SELECT
	Degrees(Convert(Float, [p].[MoneyValue]))
FROM
	[LinqDataTypes] [p]
WHERE
	(Degrees(Convert(Float, [p].[MoneyValue])) <> 0.10000000000000001 OR Degrees(Convert(Float, [p].[MoneyValue])) IS NULL)

