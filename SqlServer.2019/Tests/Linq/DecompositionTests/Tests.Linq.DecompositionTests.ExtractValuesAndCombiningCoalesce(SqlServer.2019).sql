-- SqlServer.2019

SELECT
	IIF([t].[Kind] = 1 OR [t].[Kind] = 2, 1, 0),
	[t].[Kind],
	Substring([t].[ItemCode], 1, 2),
	[t].[Color],
	Substring([t].[ItemCode], 3, 2),
	[t].[Style],
	IIF([t].[Kind] = 1 OR [t].[Kind] = 3, 1, 0),
	Substring([t].[ItemCode], 5, 2),
	Substring([t].[ItemCode], 7, 2)
FROM
	[Item] [t]

-- SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlServer.2019

SELECT
	[x_1].[Color_1],
	[x_1].[Kind],
	[x_1].[ItemCode],
	[x_1].[Color_3],
	[x_1].[ItemCode_2],
	[x_1].[Style_1],
	[x_1].[Color_4],
	[x_1].[ItemCode_1],
	[x_1].[ItemCode_3]
FROM
	(
		SELECT
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [Color],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [Color_1],
			IIF([x].[Kind] = 1, 1, 0) as [Color_2],
			Substring([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color] as [Color_3],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 3, 1, 0) as [Color_4],
			Substring([x].[ItemCode], 5, 2) as [ItemCode_1],
			[x].[Kind],
			Substring([x].[ItemCode], 3, 2) as [ItemCode_2],
			[x].[Style] as [Style_1],
			Substring([x].[ItemCode], 7, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	NOT ([x_1].[Color] = 1 AND ([x_1].[Color_1] = 1 AND [x_1].[Color_2] = 1 OR [x_1].[Color_1] = 0) OR [x_1].[Color] = 0 AND [x_1].[Color_4] = 0)

-- SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlServer.2019

SELECT
	[x_1].[Color_1],
	[x_1].[Kind],
	[x_1].[ItemCode],
	[x_1].[Color_3],
	[x_1].[ItemCode_2],
	[x_1].[Style_1],
	[x_1].[Color_4],
	[x_1].[ItemCode_1],
	[x_1].[ItemCode_3]
FROM
	(
		SELECT
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [Color],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [Color_1],
			IIF([x].[Kind] = 1, 1, 0) as [Color_2],
			Substring([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color] as [Color_3],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 3, 1, 0) as [Color_4],
			Substring([x].[ItemCode], 5, 2) as [ItemCode_1],
			[x].[Kind],
			Substring([x].[ItemCode], 3, 2) as [ItemCode_2],
			[x].[Style] as [Style_1],
			Substring([x].[ItemCode], 7, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	[x_1].[Color] = 1 AND ([x_1].[Color_1] = 1 AND [x_1].[Color_2] = 1 OR [x_1].[Color_1] = 0) OR
	[x_1].[Color] = 0 AND [x_1].[Color_4] = 0

-- SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlServer.2019

SELECT
	[x_1].[Size_2],
	[x_1].[Kind],
	[x_1].[ItemCode_2],
	[x_1].[Color],
	[x_1].[ItemCode],
	[x_1].[Style_1],
	[x_1].[Size_3],
	[x_1].[ItemCode_3],
	[x_1].[ItemCode_1]
FROM
	(
		SELECT
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [Size_1],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [Size_2],
			Substring([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 3, 1, 0) as [Size_3],
			IIF([x].[Kind] = 1, 1, 0) as [Size_4],
			Substring([x].[ItemCode], 7, 2) as [ItemCode_1],
			[x].[Kind],
			Substring([x].[ItemCode], 1, 2) as [ItemCode_2],
			[x].[Color],
			Substring([x].[ItemCode], 5, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	NOT ([x_1].[Size_1] = 1 AND [x_1].[Size_2] = 0 OR [x_1].[Size_1] = 0 AND ([x_1].[Size_3] = 1 AND [x_1].[Size_4] = 1 OR [x_1].[Size_3] = 0))

-- SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlServer.2019

SELECT
	[x_1].[Size_2],
	[x_1].[Kind],
	[x_1].[ItemCode_2],
	[x_1].[Color],
	[x_1].[ItemCode],
	[x_1].[Style_1],
	[x_1].[Size_3],
	[x_1].[ItemCode_3],
	[x_1].[ItemCode_1]
FROM
	(
		SELECT
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [Size_1],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [Size_2],
			Substring([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 3, 1, 0) as [Size_3],
			IIF([x].[Kind] = 1, 1, 0) as [Size_4],
			Substring([x].[ItemCode], 7, 2) as [ItemCode_1],
			[x].[Kind],
			Substring([x].[ItemCode], 1, 2) as [ItemCode_2],
			[x].[Color],
			Substring([x].[ItemCode], 5, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	[x_1].[Size_1] = 1 AND [x_1].[Size_2] = 0 OR [x_1].[Size_1] = 0 AND ([x_1].[Size_3] = 1 AND [x_1].[Size_4] = 1 OR [x_1].[Size_3] = 0)

-- SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

