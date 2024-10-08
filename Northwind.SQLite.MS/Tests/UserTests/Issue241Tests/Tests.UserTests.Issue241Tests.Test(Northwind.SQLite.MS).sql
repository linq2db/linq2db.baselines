BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[m_1].[CustomerID],
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
		SELECT
			[o].[CustomerID]
		FROM
			[Customers] [o]
		WHERE
			[o].[CompanyName] LIKE '%t%' ESCAPE '~'
		GROUP BY
			[o].[CustomerID],
			[o].[CompanyName],
			[o].[ContactName],
			[o].[ContactTitle],
			[o].[Address],
			[o].[City],
			[o].[Region],
			[o].[PostalCode],
			[o].[Country],
			[o].[Phone],
			[o].[Fax]
	) [m_1]
		INNER JOIN [Customers] [d] ON [m_1].[CustomerID] = [d].[CustomerID]
WHERE
	[d].[CompanyName] LIKE '%t%' ESCAPE '~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[o].[CustomerID],
	[o].[CompanyName],
	[o].[ContactName],
	[o].[ContactTitle],
	[o].[Address],
	[o].[City],
	[o].[Region],
	[o].[PostalCode],
	[o].[Country],
	[o].[Phone],
	[o].[Fax]
FROM
	[Customers] [o]
WHERE
	[o].[CompanyName] LIKE '%t%' ESCAPE '~'
GROUP BY
	[o].[CustomerID],
	[o].[CompanyName],
	[o].[ContactName],
	[o].[ContactTitle],
	[o].[Address],
	[o].[City],
	[o].[Region],
	[o].[PostalCode],
	[o].[Country],
	[o].[Phone],
	[o].[Fax]

