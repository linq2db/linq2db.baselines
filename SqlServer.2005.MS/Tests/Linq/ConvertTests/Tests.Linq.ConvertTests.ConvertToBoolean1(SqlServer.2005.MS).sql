BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN [p].[MoneyValue] <> 0 THEN 1
				ELSE 0
			END as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] = 1

