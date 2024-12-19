BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t].[c1]
FROM
	(
		SELECT
			GREATEST([p].[MoneyValue], 5.1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

