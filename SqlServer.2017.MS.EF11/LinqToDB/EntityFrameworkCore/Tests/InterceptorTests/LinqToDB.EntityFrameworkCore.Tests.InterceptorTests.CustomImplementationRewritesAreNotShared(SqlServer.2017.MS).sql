SELECT [p].[ProductID]
FROM [Products] AS [p]
ORDER BY [p].[ProductID]


-- SqlServer.2017
SELECT
	[p].[ProductID]
FROM
	[Products] [p]



Parameters:
@limit='?' (DbType = Int32)

SELECT [p].[ProductID]
FROM [Products] AS [p]
WHERE [p].[ProductID] <= @limit
ORDER BY [p].[ProductID]


-- SqlServer.2017
SELECT
	[id].[ProductID]
FROM
	[Products] [id]
WHERE
	[id].[ProductID] <= 2



SELECT [p].[ProductID]
FROM [Products] AS [p]
ORDER BY [p].[ProductID]


-- SqlServer.2017
SELECT
	[p].[ProductID]
FROM
	[Products] [p]



Parameters:
@limit='?' (DbType = Int32)

SELECT [p].[ProductID]
FROM [Products] AS [p]
WHERE [p].[ProductID] <= @limit
ORDER BY [p].[ProductID]


-- SqlServer.2017
SELECT
	[id].[ProductID]
FROM
	[Products] [id]
WHERE
	[id].[ProductID] <= 2



