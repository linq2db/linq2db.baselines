-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN [t].[Kind] = 1 OR [t].[Kind] = 2 THEN 1
		ELSE 0
	END,
	[t].[Kind],
	Substring([t].[ItemCode], 1, 2),
	[t].[Color],
	Substring([t].[ItemCode], 3, 2),
	[t].[Style],
	CASE
		WHEN [t].[Kind] = 1 OR [t].[Kind] = 3 THEN 1
		ELSE 0
	END,
	Substring([t].[ItemCode], 5, 2),
	Substring([t].[ItemCode], 7, 2)
FROM
	[Item] [t]

-- Sybase.Managed Sybase

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Sybase.Managed Sybase

SELECT
	[x_1].[cond_1],
	[x_1].[Kind],
	[x_1].[ItemCode],
	[x_1].[Color],
	[x_1].[ItemCode_2],
	[x_1].[Style_1],
	[x_1].[cond_3],
	[x_1].[ItemCode_1],
	[x_1].[ItemCode_3]
FROM
	(
		SELECT
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [cond],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [cond_1],
			CASE
				WHEN [x].[Kind] = 1 THEN 1
				ELSE 0
			END as [cond_2],
			Substring([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
				ELSE 0
			END as [cond_3],
			Substring([x].[ItemCode], 5, 2) as [ItemCode_1],
			[x].[Kind],
			Substring([x].[ItemCode], 3, 2) as [ItemCode_2],
			[x].[Style] as [Style_1],
			Substring([x].[ItemCode], 7, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	NOT ([x_1].[cond] = 1 AND ([x_1].[cond_1] = 1 AND [x_1].[cond_2] = 1 OR [x_1].[cond_1] = 0) OR [x_1].[cond] = 0 AND [x_1].[cond_3] = 0)

-- Sybase.Managed Sybase

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Sybase.Managed Sybase

SELECT
	[x_1].[cond_1],
	[x_1].[Kind],
	[x_1].[ItemCode],
	[x_1].[Color],
	[x_1].[ItemCode_2],
	[x_1].[Style_1],
	[x_1].[cond_3],
	[x_1].[ItemCode_1],
	[x_1].[ItemCode_3]
FROM
	(
		SELECT
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [cond],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [cond_1],
			CASE
				WHEN [x].[Kind] = 1 THEN 1
				ELSE 0
			END as [cond_2],
			Substring([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
				ELSE 0
			END as [cond_3],
			Substring([x].[ItemCode], 5, 2) as [ItemCode_1],
			[x].[Kind],
			Substring([x].[ItemCode], 3, 2) as [ItemCode_2],
			[x].[Style] as [Style_1],
			Substring([x].[ItemCode], 7, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	[x_1].[cond] = 1 AND ([x_1].[cond_1] = 1 AND [x_1].[cond_2] = 1 OR [x_1].[cond_1] = 0) OR
	[x_1].[cond] = 0 AND [x_1].[cond_3] = 0

-- Sybase.Managed Sybase

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Sybase.Managed Sybase

SELECT
	[x_1].[cond_1],
	[x_1].[Kind],
	[x_1].[ItemCode_2],
	[x_1].[Color],
	[x_1].[ItemCode],
	[x_1].[Style_1],
	[x_1].[cond_2],
	[x_1].[ItemCode_3],
	[x_1].[ItemCode_1]
FROM
	(
		SELECT
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [cond],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [cond_1],
			Substring([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
				ELSE 0
			END as [cond_2],
			CASE
				WHEN [x].[Kind] = 1 THEN 1
				ELSE 0
			END as [cond_3],
			Substring([x].[ItemCode], 7, 2) as [ItemCode_1],
			[x].[Kind],
			Substring([x].[ItemCode], 1, 2) as [ItemCode_2],
			[x].[Color],
			Substring([x].[ItemCode], 5, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	NOT ([x_1].[cond] = 1 AND [x_1].[cond_1] = 0 OR [x_1].[cond] = 0 AND ([x_1].[cond_2] = 1 AND [x_1].[cond_3] = 1 OR [x_1].[cond_2] = 0))

-- Sybase.Managed Sybase

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Sybase.Managed Sybase

SELECT
	[x_1].[cond_1],
	[x_1].[Kind],
	[x_1].[ItemCode_2],
	[x_1].[Color],
	[x_1].[ItemCode],
	[x_1].[Style_1],
	[x_1].[cond_2],
	[x_1].[ItemCode_3],
	[x_1].[ItemCode_1]
FROM
	(
		SELECT
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [cond],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 2 THEN 1
				ELSE 0
			END as [cond_1],
			Substring([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			CASE
				WHEN [x].[Kind] = 1 OR [x].[Kind] = 3 THEN 1
				ELSE 0
			END as [cond_2],
			CASE
				WHEN [x].[Kind] = 1 THEN 1
				ELSE 0
			END as [cond_3],
			Substring([x].[ItemCode], 7, 2) as [ItemCode_1],
			[x].[Kind],
			Substring([x].[ItemCode], 1, 2) as [ItemCode_2],
			[x].[Color],
			Substring([x].[ItemCode], 5, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	[x_1].[cond] = 1 AND [x_1].[cond_1] = 0 OR [x_1].[cond] = 0 AND ([x_1].[cond_2] = 1 AND [x_1].[cond_3] = 1 OR [x_1].[cond_2] = 0)

-- Sybase.Managed Sybase

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

