BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

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
	[p_2].[ProductName],
	[p_2].[UnitPrice]
FROM
	[ProductsOverTenDollars] [p_2]
		INNER JOIN [CategoryAndNumberOfProducts] [c_2] ON [c_2].[CategoryID] = [p_2].[CategoryID]
ORDER BY
	[p_2].[ProductName]

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

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

