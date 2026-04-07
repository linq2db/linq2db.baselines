-- Northwind.SQLite SQLite.Classic SQLite

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
	[t1].[CategoryName],
	[t1].[NumberOfProducts],
	[t1].[ProductName],
	[t1].[UnitPrice]
FROM
	(
		SELECT
			[p_2].[ProductName],
			[c_2].[CategoryName],
			[c_2].[NumberOfProducts],
			[p_2].[UnitPrice]
		FROM
			[ProductsOverTenDollars] [p_2]
				INNER JOIN [CategoryAndNumberOfProducts] [c_2] ON [c_2].[CategoryID] = [p_2].[CategoryID]
	) [t1]
ORDER BY
	[t1].[ProductName]

-- Northwind.SQLite SQLite.Classic SQLite

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

