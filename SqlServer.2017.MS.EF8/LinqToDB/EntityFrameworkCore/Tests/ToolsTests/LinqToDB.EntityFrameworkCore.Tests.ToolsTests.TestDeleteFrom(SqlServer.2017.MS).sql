-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 20

DELETE [x]
FROM
	(
		SELECT TOP (@take)
			1 as [c1]
		FROM
			[Customers] [e]
		WHERE
			[e].[IsDeleted] = 1
	) [x]
WHERE
	1 = 0



