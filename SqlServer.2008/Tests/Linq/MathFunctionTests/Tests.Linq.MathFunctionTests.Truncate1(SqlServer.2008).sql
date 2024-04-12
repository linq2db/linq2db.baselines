BeforeExecute
-- SqlServer.2008

SELECT
	[t_1].[c1]
FROM
	(
		SELECT
			Round([t].[MoneyValue], 0, 1) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [t_1]
WHERE
	[t_1].[c1] <> 0.1

