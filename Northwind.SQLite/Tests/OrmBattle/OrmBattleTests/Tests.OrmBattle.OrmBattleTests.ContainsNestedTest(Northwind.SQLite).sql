-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[c_1].[CustomerID],
	[c_1].[CompanyName],
	[c_1].[ContactName],
	[c_1].[ContactTitle],
	[c_1].[Address],
	[c_1].[City],
	[c_1].[Region],
	[c_1].[PostalCode],
	[c_1].[Country],
	[c_1].[Phone],
	[c_1].[Fax],
	CASE
		WHEN [c_1].[CustomerID] IN (
			SELECT
				[a_Customer].[CustomerID]
			FROM
				[Orders] [o]
					INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]
			WHERE
				strftime('%Y-%m-%d %H:%M:%f', [o].[OrderDate]) > strftime('%Y-%m-%d %H:%M:%f', '2001-01-01 00:00:00.000')
		)
			THEN 1
		ELSE 0
	END
FROM
	[Customers] [c_1]

