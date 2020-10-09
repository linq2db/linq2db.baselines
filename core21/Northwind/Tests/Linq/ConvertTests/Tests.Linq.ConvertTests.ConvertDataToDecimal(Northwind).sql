BeforeExecute
-- Northwind SqlServer.2017

SELECT 
	([od].[UnitPrice] * Convert(Decimal(29,10), [od].[Quantity])) * Convert(Decimal(29,10), 1 - [od].[Discount])
FROM
	[Order Details] [od]

BeforeExecute
-- Northwind SqlServer.2017

SELECT 
	[od].[UnitPrice], 
	[od].[Quantity], 
	[od].[Discount]
FROM
	[Order Details] [od]

