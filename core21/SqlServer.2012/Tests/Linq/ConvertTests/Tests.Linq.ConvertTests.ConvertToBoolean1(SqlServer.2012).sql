BeforeExecute
-- SqlServer.2012

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(Bit, [t].[MoneyValue]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] = 1

