-- SqlServer.2005

SELECT
	[x].[cond],
	[x].[Kind],
	[x].[ItemCode],
	[x].[Color],
	[x].[ItemCode_1],
	[x].[Style_1]
FROM
	(
		SELECT
			CASE
				WHEN [i].[Kind] = 1 OR [i].[Kind] = 2 THEN 1
				ELSE 0
			END as [cond],
			CASE
				WHEN [i].[Kind] = 1 THEN 1
				ELSE 0
			END as [cond_1],
			Substring([i].[ItemCode], 1, 2) as [ItemCode],
			[i].[Color],
			[i].[Kind],
			Substring([i].[ItemCode], 3, 2) as [ItemCode_1],
			[i].[Style] as [Style_1]
		FROM
			[Item] [i]
		WHERE
			[i].[Kind] = 1 OR [i].[Kind] = 2
	) [x]
WHERE
	NOT ([x].[cond] = 1 AND [x].[cond_1] = 1 OR [x].[cond] = 0)

-- SqlServer.2005

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlServer.2005

SELECT
	[x].[cond],
	[x].[ItemCode],
	[x].[Color],
	[x].[Kind],
	[x].[ItemCode_1],
	[x].[Style_1]
FROM
	(
		SELECT
			CASE
				WHEN [i].[Kind] = 1 OR [i].[Kind] = 3 THEN 1
				ELSE 0
			END as [cond],
			Substring([i].[ItemCode], 5, 2) as [ItemCode],
			[i].[Color],
			[i].[Kind],
			Substring([i].[ItemCode], 7, 2) as [ItemCode_1],
			[i].[Style] as [Style_1]
		FROM
			[Item] [i]
		WHERE
			[i].[Kind] = 1 OR [i].[Kind] = 3
	) [x]
WHERE
	[x].[cond] = 1

-- SqlServer.2005

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlServer.2005

SELECT
	[t1].[cond],
	[t1].[Color],
	[t1].[ItemCode],
	[t1].[Name],
	NULL,
	NULL,
	[t1].[ItemCode_1],
	[t1].[Name_1],
	NULL,
	NULL,
	NULL
FROM
	(
		SELECT
			CASE
				WHEN [t].[Kind] = 1 OR [t].[Kind] = 2 THEN 1
				ELSE 0
			END as [cond],
			Substring([t].[ItemCode], 1, 2) as [ItemCode],
			[t].[Color] as [Name],
			Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
			[t].[Style] as [Name_1],
			CASE
				WHEN [t].[Kind] = 1 THEN 1
				ELSE 0
			END as [Color]
		FROM
			[Item] [t]
	) [t1]
WHERE
	[t1].[cond] = 1
UNION ALL
SELECT
	[t2].[cond],
	NULL,
	NULL,
	NULL,
	[t2].[ItemCode],
	[t2].[Color],
	NULL,
	NULL,
	[t2].[cond_1],
	[t2].[ItemCode_1],
	[t2].[Style_1]
FROM
	(
		SELECT
			CASE
				WHEN [t_1].[Kind] = 1 OR [t_1].[Kind] = 3 THEN 1
				ELSE 0
			END as [cond],
			Substring([t_1].[ItemCode], 5, 2) as [ItemCode],
			[t_1].[Color],
			Substring([t_1].[ItemCode], 7, 2) as [ItemCode_1],
			[t_1].[Style] as [Style_1],
			CASE
				WHEN [t_1].[Kind] = 1 THEN 1
				ELSE 0
			END as [cond_1]
		FROM
			[Item] [t_1]
	) [t2]
WHERE
	[t2].[cond] = 1

-- SqlServer.2005

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlServer.2005

SELECT
	[x_1].[Color],
	[x_1].[Color_1],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[Size_1],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[cond] as [Color],
			[x].[cond_1] as [Color_1],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			NULL as [ItemCode_2],
			NULL as [Name_2],
			NULL as [Size_1],
			NULL as [ItemCode_3],
			NULL as [Name_3]
		FROM
			(
				SELECT
					CASE
						WHEN [t].[Kind] = 1 OR [t].[Kind] = 2 THEN 1
						ELSE 0
					END as [cond],
					Substring([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					CASE
						WHEN [t].[Kind] = 1 THEN 1
						ELSE 0
					END as [cond_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[cond] = 1
		UNION ALL
		SELECT
			[t1].[cond] as [Color],
			NULL as [Color_1],
			NULL as [ItemCode],
			NULL as [Name],
			NULL as [ItemCode_1],
			NULL as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[cond_1] as [Size_1],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					CASE
						WHEN [t_1].[Kind] = 1 OR [t_1].[Kind] = 3 THEN 1
						ELSE 0
					END as [cond],
					Substring([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Substring([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					CASE
						WHEN [t_1].[Kind] = 1 THEN 1
						ELSE 0
					END as [cond_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[cond] = 1
	) [x_1]
WHERE
	NOT ([x_1].[Color] = 1 AND [x_1].[Color_1] IS NOT NULL AND [x_1].[Color_1] = 1 OR [x_1].[Color] = 0)

-- SqlServer.2005

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlServer.2005

SELECT
	[x_1].[Color],
	[x_1].[Color_1],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[Size_1],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[cond] as [Color],
			[x].[cond_1] as [Color_1],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			NULL as [ItemCode_2],
			NULL as [Name_2],
			NULL as [Size_1],
			NULL as [ItemCode_3],
			NULL as [Name_3]
		FROM
			(
				SELECT
					CASE
						WHEN [t].[Kind] = 1 OR [t].[Kind] = 2 THEN 1
						ELSE 0
					END as [cond],
					Substring([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					CASE
						WHEN [t].[Kind] = 1 THEN 1
						ELSE 0
					END as [cond_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[cond] = 1
		UNION ALL
		SELECT
			[t1].[cond] as [Color],
			NULL as [Color_1],
			NULL as [ItemCode],
			NULL as [Name],
			NULL as [ItemCode_1],
			NULL as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[cond_1] as [Size_1],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					CASE
						WHEN [t_1].[Kind] = 1 OR [t_1].[Kind] = 3 THEN 1
						ELSE 0
					END as [cond],
					Substring([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Substring([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					CASE
						WHEN [t_1].[Kind] = 1 THEN 1
						ELSE 0
					END as [cond_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[cond] = 1
	) [x_1]
WHERE
	[x_1].[Color] = 1 AND [x_1].[Color_1] = 1 OR [x_1].[Color] = 0

-- SqlServer.2005

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlServer.2005

SELECT
	[x_1].[Size_1],
	[x_1].[Color],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[Size_2],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[cond] as [Size_1],
			[x].[cond_1] as [Color],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			NULL as [ItemCode_2],
			NULL as [Name_2],
			NULL as [Size_2],
			NULL as [ItemCode_3],
			NULL as [Name_3]
		FROM
			(
				SELECT
					CASE
						WHEN [t].[Kind] = 1 OR [t].[Kind] = 2 THEN 1
						ELSE 0
					END as [cond],
					Substring([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					CASE
						WHEN [t].[Kind] = 1 THEN 1
						ELSE 0
					END as [cond_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[cond] = 1
		UNION ALL
		SELECT
			[t1].[cond] as [Size_1],
			NULL as [Color],
			NULL as [ItemCode],
			NULL as [Name],
			NULL as [ItemCode_1],
			NULL as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[cond_1] as [Size_2],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					CASE
						WHEN [t_1].[Kind] = 1 OR [t_1].[Kind] = 3 THEN 1
						ELSE 0
					END as [cond],
					Substring([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Substring([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					CASE
						WHEN [t_1].[Kind] = 1 THEN 1
						ELSE 0
					END as [cond_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[cond] = 1
	) [x_1]
WHERE
	NOT ([x_1].[Size_1] = 1 AND [x_1].[Color] IS NULL AND [x_1].[Size_2] = 1 OR [x_1].[Size_1] = 0)

-- SqlServer.2005

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- SqlServer.2005

SELECT
	[x_1].[Size_1],
	[x_1].[Color],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[Size_2],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[cond] as [Size_1],
			[x].[cond_1] as [Color],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			NULL as [ItemCode_2],
			NULL as [Name_2],
			NULL as [Size_2],
			NULL as [ItemCode_3],
			NULL as [Name_3]
		FROM
			(
				SELECT
					CASE
						WHEN [t].[Kind] = 1 OR [t].[Kind] = 2 THEN 1
						ELSE 0
					END as [cond],
					Substring([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					CASE
						WHEN [t].[Kind] = 1 THEN 1
						ELSE 0
					END as [cond_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[cond] = 1
		UNION ALL
		SELECT
			[t1].[cond] as [Size_1],
			NULL as [Color],
			NULL as [ItemCode],
			NULL as [Name],
			NULL as [ItemCode_1],
			NULL as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[cond_1] as [Size_2],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					CASE
						WHEN [t_1].[Kind] = 1 OR [t_1].[Kind] = 3 THEN 1
						ELSE 0
					END as [cond],
					Substring([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Substring([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					CASE
						WHEN [t_1].[Kind] = 1 THEN 1
						ELSE 0
					END as [cond_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[cond] = 1
	) [x_1]
WHERE
	[x_1].[Size_1] = 1 AND [x_1].[Color] IS NULL AND [x_1].[Size_2] = 1 OR
	[x_1].[Size_1] = 0

-- SqlServer.2005

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

