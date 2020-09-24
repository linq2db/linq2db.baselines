BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	([od].[UnitPrice] * [od].[Quantity]) * (1 - [od].[Discount])
FROM
	[Order Details] [od]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	([od].[UnitPrice] * Cast([od].[Quantity] as Decimal(29,10))) * Cast((1 - [od].[Discount]) as Decimal(29,10))
FROM
	[Order Details] [od]

