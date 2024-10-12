BeforeExecute
-- SqlServer.2008

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Floor(CAST(Power(CAST([t].[MoneyValue] AS Float), CAST(3 AS Float)) AS Decimal(38, 17))) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0

