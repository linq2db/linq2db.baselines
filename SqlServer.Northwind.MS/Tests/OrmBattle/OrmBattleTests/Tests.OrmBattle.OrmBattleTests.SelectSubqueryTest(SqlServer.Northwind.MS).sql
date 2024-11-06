BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

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
		SELECT DISTINCT
			[o].[CustomerID]
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]
	) [m_1],
	[Customers] [d]
		INNER JOIN [Customers] [a_Customer_1] ON [m_1].[CustomerID] = [a_Customer_1].[CustomerID]
WHERE
	[d].[CustomerID] = [a_Customer_1].[CustomerID]

BeforeExecute
DisposeTransaction
