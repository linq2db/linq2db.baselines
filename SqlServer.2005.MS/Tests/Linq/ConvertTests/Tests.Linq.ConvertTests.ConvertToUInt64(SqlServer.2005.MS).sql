BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p_1].[c1]
FROM
	(
		SELECT
			CAST(Floor(CASE
				WHEN [p].[MoneyValue] - Floor([p].[MoneyValue]) = 0.5 AND Floor([p].[MoneyValue]) % 2 = 0
					THEN Floor([p].[MoneyValue])
				ELSE Round([p].[MoneyValue], 0)
			END) AS Decimal) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [p_1]
WHERE
	[p_1].[c1] > 0

