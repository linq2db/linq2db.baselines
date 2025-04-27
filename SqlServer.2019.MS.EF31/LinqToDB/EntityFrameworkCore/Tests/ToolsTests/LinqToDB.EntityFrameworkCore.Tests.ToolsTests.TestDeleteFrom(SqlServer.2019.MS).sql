-- SqlServer.2019 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 20

DELETE [x]
FROM
	(
		SELECT TOP (@take)
			[e].[CustomerID] as [CustomerId]
		FROM
			[Customers] [e]
		WHERE
			[e].[IsDeleted] = 1
	) [x]
WHERE
	1 = 0



