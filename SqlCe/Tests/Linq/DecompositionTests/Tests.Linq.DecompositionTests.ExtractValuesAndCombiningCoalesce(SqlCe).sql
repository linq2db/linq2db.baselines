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
	CASE
		WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
		ELSE 0
	END as [Color],
	[x].[Kind],
	Substring([x].[ItemCode], 1, 2) as [ItemCode],
	[x].[Color] as [Color_1],
	Substring([x].[ItemCode], 3, 2) as [ItemCode_1],
	[x].[Style] as [Style_1],
	CASE
		WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
		ELSE 0
	END as [Color_2],
	Substring([x].[ItemCode], 5, 2) as [ItemCode_2],
	Substring([x].[ItemCode], 7, 2) as [ItemCode_3]
FROM
	[Item] [x]
WHERE
	NOT (([x].[Kind] = 1 OR [x].[Kind] = 2) AND (([x].[Kind] = 1 OR [x].[Kind] = 2) AND [x].[Kind] = 1 OR NOT ([x].[Kind] = 1 OR [x].[Kind] = 2)) OR NOT ([x].[Kind] = 1 OR [x].[Kind] = 2) AND NOT ([x].[Kind] = 1 OR [x].[Kind] = 3))

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
	CASE
		WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
		ELSE 0
	END as [Color],
	[x].[Kind],
	Substring([x].[ItemCode], 1, 2) as [ItemCode],
	[x].[Color] as [Color_1],
	Substring([x].[ItemCode], 3, 2) as [ItemCode_1],
	[x].[Style] as [Style_1],
	CASE
		WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
		ELSE 0
	END as [Color_2],
	Substring([x].[ItemCode], 5, 2) as [ItemCode_2],
	Substring([x].[ItemCode], 7, 2) as [ItemCode_3]
FROM
	[Item] [x]
WHERE
	([x].[Kind] = 1 OR [x].[Kind] = 2) AND (([x].[Kind] = 1 OR [x].[Kind] = 2) AND [x].[Kind] = 1 OR NOT ([x].[Kind] = 1 OR [x].[Kind] = 2)) OR
	NOT ([x].[Kind] = 1 OR [x].[Kind] = 2) AND NOT ([x].[Kind] = 1 OR [x].[Kind] = 3)

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
	CASE
		WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
		ELSE 0
	END as [Size_1],
	[x].[Kind],
	Substring([x].[ItemCode], 1, 2) as [ItemCode],
	[x].[Color],
	Substring([x].[ItemCode], 3, 2) as [ItemCode_1],
	[x].[Style] as [Style_1],
	CASE
		WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
		ELSE 0
	END as [Size_2],
	Substring([x].[ItemCode], 5, 2) as [ItemCode_2],
	Substring([x].[ItemCode], 7, 2) as [ItemCode_3]
FROM
	[Item] [x]
WHERE
	NOT (NOT ([x].[Kind] = 1 OR [x].[Kind] = 2) AND (([x].[Kind] = 1 OR [x].[Kind] = 3) AND [x].[Kind] = 1 OR NOT ([x].[Kind] = 1 OR [x].[Kind] = 3)))

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
	CASE
		WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
		ELSE 0
	END as [Size_1],
	[x].[Kind],
	Substring([x].[ItemCode], 1, 2) as [ItemCode],
	[x].[Color],
	Substring([x].[ItemCode], 3, 2) as [ItemCode_1],
	[x].[Style] as [Style_1],
	CASE
		WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
		ELSE 0
	END as [Size_2],
	Substring([x].[ItemCode], 5, 2) as [ItemCode_2],
	Substring([x].[ItemCode], 7, 2) as [ItemCode_3]
FROM
	[Item] [x]
WHERE
	NOT ([x].[Kind] = 1 OR [x].[Kind] = 2) AND (([x].[Kind] = 1 OR [x].[Kind] = 3) AND [x].[Kind] = 1 OR NOT ([x].[Kind] = 1 OR [x].[Kind] = 3))

-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style] as [Style_1],
	[t1].[Color]
FROM
	[Item] [t1]

