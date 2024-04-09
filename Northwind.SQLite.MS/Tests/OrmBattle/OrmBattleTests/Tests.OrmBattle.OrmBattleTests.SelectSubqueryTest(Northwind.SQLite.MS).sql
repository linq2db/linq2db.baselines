BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[key_data_result].[CustomerID],
	[key_data_result].[OrderID],
	[_c].[CustomerID],
	[_c].[CompanyName],
	[_c].[ContactName],
	[_c].[ContactTitle],
	[_c].[Address],
	[_c].[City],
	[_c].[Region],
	[_c].[PostalCode],
	[_c].[Country],
	[_c].[Phone],
	[_c].[Fax]
FROM
	(
		SELECT DISTINCT
			[a_Customer].[CustomerID],
			[o].[OrderID]
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
	) [key_data_result]
		INNER JOIN [Customers] [_c] ON ([_c].[CustomerID] = [key_data_result].[CustomerID] OR [_c].[CustomerID] IS NULL AND [key_data_result].[CustomerID] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[a_Customer].[CustomerID],
	[o].[OrderID]
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)

