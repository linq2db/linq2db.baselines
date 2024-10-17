BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(CAST(Power(CAST([p].[MoneyValue] AS Float), CAST(3 AS Float)) AS Decimal(38, 17))) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

