BeforeExecute
-- SqlServer.2008

SELECT
	Floor(Degrees([p].[MoneyValue]))
FROM
	[LinqDataTypes] [p]
WHERE
	Floor(Degrees([p].[MoneyValue])) <> 0.1

