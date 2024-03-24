BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			IIF((
				SELECT
					Avg([o].[Freight])
				FROM
					[Orders] [o]
				WHERE
					([selectParam].[CustomerID] = [o].[CustomerID] OR [selectParam].[CustomerID] IS NULL AND [o].[CustomerID] IS NULL)
			) >= 80, 1, 0) as [Key_1]
		FROM
			[Customers] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @p Bit -- Boolean
SET     @p = 0

SELECT
	[underscore].[CustomerID],
	[underscore].[CompanyName],
	[underscore].[ContactName],
	[underscore].[ContactTitle],
	[underscore].[Address],
	[underscore].[City],
	[underscore].[Region],
	[underscore].[PostalCode],
	[underscore].[Country],
	[underscore].[Phone],
	[underscore].[Fax]
FROM
	(
		SELECT
			IIF((
				SELECT
					Avg([o].[Freight])
				FROM
					[Orders] [o]
				WHERE
					([selectParam].[CustomerID] = [o].[CustomerID] OR [selectParam].[CustomerID] IS NULL AND [o].[CustomerID] IS NULL)
			) >= 80, 1, 0) as [Key_1],
			[selectParam].[CustomerID],
			[selectParam].[CompanyName],
			[selectParam].[ContactName],
			[selectParam].[ContactTitle],
			[selectParam].[Address],
			[selectParam].[City],
			[selectParam].[Region],
			[selectParam].[PostalCode],
			[selectParam].[Country],
			[selectParam].[Phone],
			[selectParam].[Fax]
		FROM
			[Customers] [selectParam]
	) [underscore]
WHERE
	[underscore].[Key_1] = @p

