BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[c_1].[Phone]
FROM
	[Customers] [c_1]
UNION
SELECT
	[c_2].[Fax]
FROM
	[Customers] [c_2]
UNION
SELECT
	[e].[HomePhone]
FROM
	[Employees] [e]

