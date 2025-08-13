-- SqlServer.2019

DELETE [e]
FROM
	[Products] [e]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[Order Details] [e_1]
		WHERE
			[e].[ProductID] = [e_1].[ProductID]
	) > 0 AND
	[e].[ProductName] LIKE N'a%' ESCAPE N'~' AND [e].[ProductName] = N'a'



