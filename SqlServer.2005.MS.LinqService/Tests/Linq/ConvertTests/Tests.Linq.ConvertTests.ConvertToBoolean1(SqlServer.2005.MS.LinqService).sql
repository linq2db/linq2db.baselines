BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[p].[c1]
FROM
	(
		SELECT
			CASE
				WHEN [t].[MoneyValue] <> 0 THEN 1
				ELSE 0
			END as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	[p].[c1] = 1

