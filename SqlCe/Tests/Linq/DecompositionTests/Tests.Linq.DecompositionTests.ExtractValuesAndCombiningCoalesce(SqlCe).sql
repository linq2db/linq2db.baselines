-- SqlCe

SELECT
	CASE
		WHEN [t].[Kind] = 1 OR [t].[Kind] = 2 THEN 1
		ELSE 0
	END as [Top],
	[t].[Kind],
	Substring([t].[ItemCode], 1, 2) as [ItemCode],
	[t].[Color],
	Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
	[t].[Style] as [Style_1],
	CASE
		WHEN [t].[Kind] = 1 OR [t].[Kind] = 3 THEN 1
		ELSE 0
	END as [Bottom],
	Substring([t].[ItemCode], 5, 2) as [ItemCode_2],
	Substring([t].[ItemCode], 7, 2) as [ItemCode_3]
FROM
	[Item] [t]

-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style] as [Style_1],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlCe

SELECT
	[x_1].[Color_1] as [Color],
	[x_1].[Kind],
	[x_1].[ItemCode],
	[x_1].[Color_3] as [Color_1],
	[x_1].[ItemCode_2] as [ItemCode_1],
	[x_1].[Style_1],
	[x_1].[Color_4] as [Color_2],
	[x_1].[ItemCode_1] as [ItemCode_2],
	[x_1].[ItemCode_3]
FROM
	(
		SELECT
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [Color],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [Color_1],
			CASE
				WHEN [x].[Kind] = 1 THEN 1
				ELSE 0
			END as [Color_2],
			Substring([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color] as [Color_3],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
				ELSE 0
			END as [Color_4],
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

-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style] as [Style_1],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlCe

SELECT
	[x_1].[Color_1] as [Color],
	[x_1].[Kind],
	[x_1].[ItemCode],
	[x_1].[Color_3] as [Color_1],
	[x_1].[ItemCode_2] as [ItemCode_1],
	[x_1].[Style_1],
	[x_1].[Color_4] as [Color_2],
	[x_1].[ItemCode_1] as [ItemCode_2],
	[x_1].[ItemCode_3]
FROM
	(
		SELECT
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [Color],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [Color_1],
			CASE
				WHEN [x].[Kind] = 1 THEN 1
				ELSE 0
			END as [Color_2],
			Substring([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color] as [Color_3],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
				ELSE 0
			END as [Color_4],
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

-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style] as [Style_1],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlCe

SELECT
	[x_1].[Size_2] as [Size_1],
	[x_1].[Kind],
	[x_1].[ItemCode_2] as [ItemCode],
	[x_1].[Color],
	[x_1].[ItemCode] as [ItemCode_1],
	[x_1].[Style_1],
	[x_1].[Size_3] as [Size_2],
	[x_1].[ItemCode_3] as [ItemCode_2],
	[x_1].[ItemCode_1] as [ItemCode_3]
FROM
	(
		SELECT
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [Size_1],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [Size_2],
			Substring([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
				ELSE 0
			END as [Size_3],
			CASE
				WHEN [x].[Kind] = 1 THEN 1
				ELSE 0
			END as [Size_4],
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

-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style] as [Style_1],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlCe

SELECT
	[x_1].[Size_2] as [Size_1],
	[x_1].[Kind],
	[x_1].[ItemCode_2] as [ItemCode],
	[x_1].[Color],
	[x_1].[ItemCode] as [ItemCode_1],
	[x_1].[Style_1],
	[x_1].[Size_3] as [Size_2],
	[x_1].[ItemCode_3] as [ItemCode_2],
	[x_1].[ItemCode_1] as [ItemCode_3]
FROM
	(
		SELECT
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [Size_1],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [Size_2],
			Substring([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
				ELSE 0
			END as [Size_3],
			CASE
				WHEN [x].[Kind] = 1 THEN 1
				ELSE 0
			END as [Size_4],
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

-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style] as [Style_1],
	[t1].[Color]
FROM
	[Item] [t1]

