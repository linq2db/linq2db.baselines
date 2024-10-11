BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[m_1].[Key_1],
	[m_1].[Key_2],
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
			[t1].[Region] as [Key_1],
			[t1].[City] as [Key_2]
		FROM
			[Customers] [t1]
	) [m_1]
		INNER JOIN [Customers] [d] ON ([m_1].[Key_1] = [d].[Region] OR [m_1].[Key_1] IS NULL AND [d].[Region] IS NULL) AND ([m_1].[Key_2] = [d].[City] OR [m_1].[Key_2] IS NULL AND [d].[City] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[Region],
	[t1].[City]
FROM
	[Customers] [t1]
GROUP BY
	[t1].[Region],
	[t1].[City]

