-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[c_1].[CategoryID],
	[c_1].[CategoryName],
	[c_1].[Description],
	[c_1].[Picture]
FROM
	[Categories] [c_1]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[Products] [a_Products]
		WHERE
			[c_1].[CategoryID] = [a_Products].[CategoryID]
	) > 10

