-- Northwind.SQLite.MS SQLite.MS SQLite

WITH [ProductsOverTenDollars] ([CategoryID], [ProductName], [UnitPrice])
AS
(
	SELECT
		[p].[CategoryID],
		[p].[ProductName],
		[p].[UnitPrice]
	FROM
		[Products] [p]
	WHERE
		[p].[UnitPrice] > 10
),
[CategoryAndNumberOfProducts] ([CategoryID], [CategoryName], [NumberOfProducts])
AS
(
	SELECT
		[c_1].[CategoryID],
		[c_1].[CategoryName],
		(
			SELECT
				COUNT(*)
			FROM
				[Products] [p_1]
			WHERE
				[p_1].[CategoryID] = [c_1].[CategoryID]
		)
	FROM
		[Categories] [c_1]
)
SELECT
	[c_2].[CategoryName],
	[c_2].[NumberOfProducts],
	[t1].[ProductName],
	[t1].[UnitPrice]
FROM
	[ProductsOverTenDollars] [t1]
		INNER JOIN [CategoryAndNumberOfProducts] [c_2] ON [c_2].[CategoryID] = [t1].[CategoryID]
ORDER BY
	[t1].[ProductName]

-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[c_1].[CategoryName],
	(
		SELECT
			COUNT(*)
		FROM
			[Products] [p_1]
		WHERE
			[p_1].[CategoryID] = [c_1].[CategoryID]
	),
	[p].[ProductName],
	[p].[UnitPrice]
FROM
	[Products] [p]
		INNER JOIN [Categories] [c_1] ON [c_1].[CategoryID] = [p].[CategoryID]
WHERE
	[p].[UnitPrice] > 10
ORDER BY
	[p].[ProductName]

