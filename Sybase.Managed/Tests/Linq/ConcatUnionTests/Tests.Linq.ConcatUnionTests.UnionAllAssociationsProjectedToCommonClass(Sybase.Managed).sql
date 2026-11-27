-- Sybase.Managed Sybase
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	(
		SELECT
			[b].[Id],
			[a_Client].[Name]
		FROM
			[UnionBill] [b]
				INNER JOIN [UnionBillClient] [a_Client] ON [b].[IdClient] = [a_Client].[Id]
		WHERE
			[b].[IdClient] IS NOT NULL
		UNION ALL
		SELECT
			[b_1].[Id],
			[a_Client_1].[Name]
		FROM
			[UnionBill] [b_1]
				INNER JOIN [UnionBillContract] [a_Contract] ON [b_1].[IdContract] = [a_Contract].[Id]
				INNER JOIN [UnionBillClient] [a_Client_1] ON [a_Contract].[IdClient] = [a_Client_1].[Id]
		WHERE
			[b_1].[IdContract] IS NOT NULL
	) [t1]
ORDER BY
	[t1].[Id],
	[t1].[Name]

