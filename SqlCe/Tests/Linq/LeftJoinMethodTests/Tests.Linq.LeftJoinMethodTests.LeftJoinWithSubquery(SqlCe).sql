-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[c_2].[Id],
	[o].[Id] as [OrderId]
FROM
	(
		SELECT TOP (@take)
			[c_1].[Id]
		FROM
			[Customer] [c_1]
		WHERE
			[c_1].[Id] > 0
	) [c_2]
		LEFT JOIN [Order] [o] ON [c_2].[Id] = [o].[CustomerId]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

