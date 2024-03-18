BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @Length  -- Int32
SET     @Length = 4
DECLARE @take  -- Int32
SET     @take = 1

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
	CASE
		WHEN CharIndex('t', LeftStr([c_1].[City], 4), 2) = 0
			THEN -1
		ELSE @Length - CharIndex('t', Reverse(Substr([c_1].[City], 2, 3)))
	END = 3
LIMIT @take

