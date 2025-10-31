BeforeExecute
-- SqlCe

SELECT
	[t_1].[FinalCustomerId],
	[t_1].[IsActive],
	SUM([t_1].[Amount]) as [Sum_1]
FROM
	(
		SELECT
			Coalesce(CASE
				WHEN [p].[FinalCustomerId] = 0 THEN NULL
				ELSE [p].[FinalCustomerId]
			END, [p].[CustomerId]) as [FinalCustomerId],
			0 as [IsActive],
			[t].[Volume] * [p].[Price] as [Amount]
		FROM
			[Inventory] [t]
				INNER JOIN [CustomerPrice] [p] ON [t].[CustomerId] = [p].[CustomerId]
	) [t_1]
GROUP BY
	[t_1].[FinalCustomerId],
	[t_1].[IsActive]

