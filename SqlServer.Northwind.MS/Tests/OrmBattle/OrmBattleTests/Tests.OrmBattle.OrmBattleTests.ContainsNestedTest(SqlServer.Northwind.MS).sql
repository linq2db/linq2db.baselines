BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2001, 1, 1, 0, 0, 0, 0, 7)

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
	IIF([c_1].[CustomerID] IN (
		SELECT
			[a_Customer].[CustomerID]
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]
		WHERE
			[o].[OrderDate] > @p
	), 1, 0)
FROM
	[Customers] [c_1]

