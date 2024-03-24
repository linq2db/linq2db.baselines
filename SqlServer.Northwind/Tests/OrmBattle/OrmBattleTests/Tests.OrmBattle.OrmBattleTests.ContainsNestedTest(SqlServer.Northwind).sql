BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @OrderDate DateTime2
SET     @OrderDate = DATETIME2FROMPARTS(2001, 1, 1, 0, 0, 0, 0, 7)

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
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
		WHERE
			[o].[OrderDate] > @OrderDate AND ([a_Customer].[CustomerID] = [c_1].[CustomerID] OR [a_Customer].[CustomerID] IS NULL AND [c_1].[CustomerID] IS NULL)
	), 1, 0)
FROM
	[Customers] [c_1]

