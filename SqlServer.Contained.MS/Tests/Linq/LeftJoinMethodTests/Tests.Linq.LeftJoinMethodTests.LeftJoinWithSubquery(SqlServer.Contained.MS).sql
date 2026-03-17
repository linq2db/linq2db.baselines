-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[c_2].[Id],
	[o].[Id]
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

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[Customer] [t1]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Name]
FROM
	[Order] [t1]

