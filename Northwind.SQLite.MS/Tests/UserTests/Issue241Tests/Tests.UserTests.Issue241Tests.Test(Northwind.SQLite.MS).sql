-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[m_1].[CustomerID],
	[m_1].[CompanyName],
	[m_1].[ContactName],
	[m_1].[ContactTitle],
	[m_1].[Address],
	[m_1].[City],
	[m_1].[Region],
	[m_1].[Country],
	[m_1].[Phone],
	[m_1].[Fax],
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
	[Customers] [m_1]
		CROSS JOIN [Customers] [d]
WHERE
	1 = 0

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

