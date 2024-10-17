BeforeExecute
-- SqlServer.2012

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Round([p].[MoneyValue], 0, 1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.1

