--  SqlServer.2019

DELETE [e]
FROM
	[Products] [e]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[Order Details] [a_OrderDetails]
		WHERE
			[e].[ProductID] = [a_OrderDetails].[ProductID]
	) > 0 AND
	[e].[ProductName] LIKE N'a%' ESCAPE N'~' AND [e].[ProductName] = N'a'



