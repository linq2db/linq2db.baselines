BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Degrees(Convert(Int, [p].[MoneyValue]))
FROM
	[LinqDataTypes] [p]
WHERE
	(Convert(Float, Degrees(Convert(Int, [p].[MoneyValue]))) <> 0.10000000000000001 OR Convert(Float, Degrees(Convert(Int, [p].[MoneyValue]))) IS NULL)

