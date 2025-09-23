BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @Length  -- Int32
SET     @Length = 1

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
	[c_1].[Fax]
FROM
	[Customers] [c_1]
WHERE
	(4 - CharIndex('t', Reverse(Substr([c_1].[City], 2, 3)))) - @Length + 1 = 3 AND
	(CharIndex('t', LeftStr([c_1].[City], 4), 2) <> 0 OR [c_1].[City] IS NULL)
LIMIT 1

