--  SqlServer.2022

DELETE [e]
FROM
	[Products] [e]
WHERE
	([e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0) AND
	(
		SELECT
			COUNT(*)
		FROM
			[Order Details] [a_OrderDetails]
		WHERE
			[e].[ProductID] = [a_OrderDetails].[ProductID]
	) > 0 AND
	[e].[ProductName] LIKE N'a%' ESCAPE N'~' AND
	[e].[ProductName] = N'a'



