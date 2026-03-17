-- SqlServer.2016.MS SqlServer.2016

SELECT
	IIF([t2].[x] < 0, 9, [t2].[x] + 8),
	[t2].[x] + [t2].[x]
FROM
	(
		SELECT
			(
				SELECT
					SUM([t1].[MoneyValue])
				FROM
					[LinqDataTypes] [t1]
			) as [x]
		FROM
			[LinqDataTypes] [q]
	) [t2]

