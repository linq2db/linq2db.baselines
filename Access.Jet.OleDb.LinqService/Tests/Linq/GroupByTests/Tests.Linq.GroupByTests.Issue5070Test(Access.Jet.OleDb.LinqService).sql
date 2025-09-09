BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[t_1].[FinalCustomerId],
	[t_1].[IsActive],
	SUM([t_1].[Amount])
FROM
	(
		SELECT
			IIF([p].[FinalCustomerId] = 0, [p].[CustomerId], IIF([p].[FinalCustomerId] = 0, NULL, [p].[FinalCustomerId])) as [FinalCustomerId],
			False as [IsActive],
			[t].[Volume] * [p].[Price] as [Amount]
		FROM
			[Inventory] [t]
				INNER JOIN [CustomerPrice] [p] ON ([t].[CustomerId] = [p].[CustomerId])
	) [t_1]
GROUP BY
	[t_1].[FinalCustomerId],
	[t_1].[IsActive]

