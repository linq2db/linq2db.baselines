BeforeExecute
-- SqlServer.2016

SELECT
	Floor(Degrees([p].[MoneyValue]))
FROM
	[LinqDataTypes] [p]
WHERE
	Floor(Degrees([p].[MoneyValue])) <> 0.1

