BeforeExecute
-- SqlServer.2022

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Degrees(Convert(Float, [p].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

