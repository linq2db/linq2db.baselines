BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @p NVarChar(1) -- String
SET     @p = 't'

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
	4 - CharIndex('t', Reverse(Substr([c_1].[City], 2, 3))) = 3 AND
	(CharIndex(@p, LeftStr([c_1].[City], 4), 2) <> 0 OR CharIndex(@p, LeftStr([c_1].[City], 4), 2) IS NULL)
LIMIT 1

