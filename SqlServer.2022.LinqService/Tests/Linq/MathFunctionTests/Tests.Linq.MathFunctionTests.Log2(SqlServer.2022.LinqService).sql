BeforeExecute
-- SqlServer.2022

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Floor(Log(CAST([p].[MoneyValue] AS Float)) / 0.69314718055994529) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

