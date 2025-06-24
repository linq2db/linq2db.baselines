BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[m_1].[CustomerID],
	[m_1].[CustomerID],
	[m_1].[CompanyName],
	[m_1].[ContactName],
	[m_1].[ContactTitle],
	[m_1].[Address],
	[m_1].[City],
	[m_1].[Region],
	[m_1].[PostalCode],
	[m_1].[Country],
	[m_1].[Phone],
	[m_1].[Fax]
FROM
	[Customers] [m_1]
WHERE
	[m_1].[CompanyName] LIKE '%t%' ESCAPE '~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[o].[CustomerID]
FROM
	[Customers] [o]
WHERE
	[o].[CompanyName] LIKE '%t%' ESCAPE '~'
GROUP BY
	[o].[CustomerID]

