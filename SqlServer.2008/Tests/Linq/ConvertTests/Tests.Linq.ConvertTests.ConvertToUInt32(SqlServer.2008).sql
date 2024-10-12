BeforeExecute
-- SqlServer.2008

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			CAST(Floor(CASE
				WHEN [p].[MoneyValue] - FLOOR([p].[MoneyValue]) = 0.5 AND (FLOOR([p].[MoneyValue]) % 2) = 0
					THEN FLOOR([p].[MoneyValue])
				ELSE ROUND([p].[MoneyValue], 0)
			END) AS BigInt) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

