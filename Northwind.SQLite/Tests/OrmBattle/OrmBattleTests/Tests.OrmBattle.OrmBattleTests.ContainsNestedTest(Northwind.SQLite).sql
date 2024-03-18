BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @OrderDate  -- DateTime
SET     @OrderDate = '2001-01-01'

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
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Orders] [o]
					INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
			WHERE
				DateTime([o].[OrderDate]) > DateTime(@OrderDate) AND
				([a_Customer].[CustomerID] = [c_1].[CustomerID] OR [a_Customer].[CustomerID] IS NULL AND [c_1].[CustomerID] IS NULL)
		)
			THEN 1
		ELSE 0
	END
FROM
	[Customers] [c_1]

