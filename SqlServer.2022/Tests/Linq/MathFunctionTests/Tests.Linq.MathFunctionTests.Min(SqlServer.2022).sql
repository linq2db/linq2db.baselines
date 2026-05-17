-- SqlServer.2022

SELECT
	[t].[c1]
FROM
	(
		SELECT
			LEAST([p].[MoneyValue], 5) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

