BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[m_1].[Region],
	[m_1].[City],
	[d].[CustomerID],
	[d].[CompanyName],
	[d].[ContactName],
	[d].[ContactTitle],
	[d].[Address],
	[d].[City],
	[d].[Region],
	[d].[PostalCode],
	[d].[Country],
	[d].[Phone],
	[d].[Fax]
FROM
	(
		SELECT DISTINCT
			[t1].[Region],
			[t1].[City]
		FROM
			[Customers] [t1]
	) [m_1]
		INNER JOIN [Customers] [d] ON ([m_1].[Region] = [d].[Region] AND [m_1].[Region] IS NOT NULL AND [d].[Region] IS NOT NULL OR [m_1].[Region] IS NULL AND [d].[Region] IS NULL) AND ([m_1].[City] = [d].[City] AND [m_1].[City] IS NOT NULL AND [d].[City] IS NOT NULL OR [m_1].[City] IS NULL AND [d].[City] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[Region],
	[t1].[City]
FROM
	[Customers] [t1]
GROUP BY
	[t1].[Region],
	[t1].[City]

