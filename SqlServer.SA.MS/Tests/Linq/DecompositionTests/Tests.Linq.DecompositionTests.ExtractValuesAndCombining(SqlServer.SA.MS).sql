BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Item]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Item]', N'U') IS NULL)
	CREATE TABLE [Item]
	(
		[ItemId]   Int            NOT NULL,
		[Kind]     Int            NOT NULL,
		[ItemCode] NVarChar(4000)     NULL,
		[Style]    NVarChar(4000)     NULL,
		[Color]    NVarChar(4000)     NULL,

		CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([ItemId])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Item]
(
	[ItemId],
	[Kind],
	[ItemCode],
	[Style],
	[Color]
)
VALUES
(1,1,N'01020102',N'Style1',N'White'),
(2,1,N'01020102',N'Style1',N'White'),
(3,1,N'01020102',N'Style1',N'White'),
(4,2,N'03020302',N'Style3',N'White'),
(5,2,N'01040104',N'Style1',N'Blue'),
(6,2,N'01010104',N'Style1',N'Black'),
(7,3,N'03020302',N'Style3',N'White'),
(8,3,N'01040104',N'Style1',N'Blue'),
(9,3,N'01010104',N'Style1',N'Black')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
			IIF([i].[Kind] = 1 OR [i].[Kind] = 2, 1, 0) as [cond],
			IIF([i].[Kind] = 1, 1, 0) as [cond_1],
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
	NOT ([x].[cond] = 1 AND [x].[cond_1] = 1)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
			IIF([i].[Kind] = 1 OR [i].[Kind] = 3, 1, 0) as [cond],
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

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[cond],
	[t1].[cond_1],
	[t1].[ItemCode],
	[t1].[Color],
	NULL,
	NULL,
	[t1].[ItemCode_1],
	[t1].[Style_1],
	NULL,
	NULL,
	NULL
FROM
	(
		SELECT
			IIF([t].[Kind] = 1 OR [t].[Kind] = 2, 1, 0) as [cond],
			Substring([t].[ItemCode], 1, 2) as [ItemCode],
			[t].[Color],
			Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
			[t].[Style] as [Style_1],
			IIF([t].[Kind] = 1, 1, 0) as [cond_1]
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
			IIF([t_1].[Kind] = 1 OR [t_1].[Kind] = 3, 1, 0) as [cond],
			Substring([t_1].[ItemCode], 5, 2) as [ItemCode],
			[t_1].[Color],
			Substring([t_1].[ItemCode], 7, 2) as [ItemCode_1],
			[t_1].[Style] as [Style_1],
			IIF([t_1].[Kind] = 1, 1, 0) as [cond_1]
		FROM
			[Item] [t_1]
	) [t2]
WHERE
	[t2].[cond] = 1

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x_2].[cond],
	[x_2].[cond_1_1],
	[x_2].[ItemCode],
	[x_2].[Color],
	[x_2].[c1],
	[x_2].[c2],
	[x_2].[ItemCode_1],
	[x_2].[Style_1],
	[x_2].[c3],
	[x_2].[c4],
	[x_2].[c5]
FROM
	(
		SELECT
			[x_1].[cond],
			IIF([x_1].[cond_1] IS NOT NULL, 1, 0) as [cond_1],
			[x_1].[cond_1] as [cond_1_1],
			[x_1].[ItemCode],
			[x_1].[Color],
			[x_1].[c1],
			[x_1].[c2],
			[x_1].[ItemCode_1],
			[x_1].[Style_1],
			[x_1].[c3],
			[x_1].[c4],
			[x_1].[c5]
		FROM
			(
				SELECT
					[x].[cond],
					[x].[cond_1],
					[x].[ItemCode],
					[x].[Color],
					[x].[ItemCode_1],
					[x].[Style_1],
					NULL as [c1],
					NULL as [c2],
					NULL as [c3],
					NULL as [c4],
					NULL as [c5]
				FROM
					(
						SELECT
							IIF([t].[Kind] = 1 OR [t].[Kind] = 2, 1, 0) as [cond],
							Substring([t].[ItemCode], 1, 2) as [ItemCode],
							[t].[Color],
							Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
							[t].[Style] as [Style_1],
							IIF([t].[Kind] = 1, 1, 0) as [cond_1]
						FROM
							[Item] [t]
					) [x]
				WHERE
					[x].[cond] = 1
				UNION ALL
				SELECT
					[t1].[cond],
					NULL as [cond_1],
					NULL as [ItemCode],
					NULL as [Color],
					NULL as [ItemCode_1],
					NULL as [Style_1],
					[t1].[ItemCode] as [c1],
					[t1].[Color] as [c2],
					[t1].[cond_1] as [c3],
					[t1].[ItemCode_1] as [c4],
					[t1].[Style_1] as [c5]
				FROM
					(
						SELECT
							IIF([t_1].[Kind] = 1 OR [t_1].[Kind] = 3, 1, 0) as [cond],
							Substring([t_1].[ItemCode], 5, 2) as [ItemCode],
							[t_1].[Color],
							Substring([t_1].[ItemCode], 7, 2) as [ItemCode_1],
							[t_1].[Style] as [Style_1],
							IIF([t_1].[Kind] = 1, 1, 0) as [cond_1]
						FROM
							[Item] [t_1]
					) [t1]
				WHERE
					[t1].[cond] = 1
			) [x_1]
	) [x_2]
WHERE
	NOT ([x_2].[cond] = 1 AND [x_2].[cond_1] = 1) OR NOT ([x_2].[cond] = 1 AND [x_2].[cond_1] = 1 AND [x_2].[cond_1_1] = 1 AND [x_2].[cond_1_1] IS NOT NULL)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x_2].[cond],
	[x_2].[cond_1_1],
	[x_2].[ItemCode],
	[x_2].[Color],
	[x_2].[c1],
	[x_2].[c2],
	[x_2].[ItemCode_1],
	[x_2].[Style_1],
	[x_2].[c3],
	[x_2].[c4],
	[x_2].[c5]
FROM
	(
		SELECT
			[x_1].[cond],
			IIF([x_1].[cond_1] IS NOT NULL, 1, 0) as [cond_1],
			[x_1].[cond_1] as [cond_1_1],
			[x_1].[ItemCode],
			[x_1].[Color],
			[x_1].[c1],
			[x_1].[c2],
			[x_1].[ItemCode_1],
			[x_1].[Style_1],
			[x_1].[c3],
			[x_1].[c4],
			[x_1].[c5]
		FROM
			(
				SELECT
					[x].[cond],
					[x].[cond_1],
					[x].[ItemCode],
					[x].[Color],
					[x].[ItemCode_1],
					[x].[Style_1],
					NULL as [c1],
					NULL as [c2],
					NULL as [c3],
					NULL as [c4],
					NULL as [c5]
				FROM
					(
						SELECT
							IIF([t].[Kind] = 1 OR [t].[Kind] = 2, 1, 0) as [cond],
							Substring([t].[ItemCode], 1, 2) as [ItemCode],
							[t].[Color],
							Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
							[t].[Style] as [Style_1],
							IIF([t].[Kind] = 1, 1, 0) as [cond_1]
						FROM
							[Item] [t]
					) [x]
				WHERE
					[x].[cond] = 1
				UNION ALL
				SELECT
					[t1].[cond],
					NULL as [cond_1],
					NULL as [ItemCode],
					NULL as [Color],
					NULL as [ItemCode_1],
					NULL as [Style_1],
					[t1].[ItemCode] as [c1],
					[t1].[Color] as [c2],
					[t1].[cond_1] as [c3],
					[t1].[ItemCode_1] as [c4],
					[t1].[Style_1] as [c5]
				FROM
					(
						SELECT
							IIF([t_1].[Kind] = 1 OR [t_1].[Kind] = 3, 1, 0) as [cond],
							Substring([t_1].[ItemCode], 5, 2) as [ItemCode],
							[t_1].[Color],
							Substring([t_1].[ItemCode], 7, 2) as [ItemCode_1],
							[t_1].[Style] as [Style_1],
							IIF([t_1].[Kind] = 1, 1, 0) as [cond_1]
						FROM
							[Item] [t_1]
					) [t1]
				WHERE
					[t1].[cond] = 1
			) [x_1]
	) [x_2]
WHERE
	[x_2].[cond] = 1 AND
	[x_2].[cond_1] = 1 AND
	[x_2].[cond] = 1 AND
	[x_2].[cond_1] = 1 AND
	[x_2].[cond_1_1] = 1

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x_2].[cond],
	[x_2].[cond_1_1],
	[x_2].[ItemCode],
	[x_2].[Color],
	[x_2].[c1],
	[x_2].[c2],
	[x_2].[ItemCode_1],
	[x_2].[Style_1],
	[x_2].[c3],
	[x_2].[c4],
	[x_2].[c5]
FROM
	(
		SELECT
			[x_1].[cond],
			IIF([x_1].[cond_1] IS NOT NULL, 1, 0) as [cond_1],
			[x_1].[ItemCode_1],
			[x_1].[Style_1],
			[x_1].[c3],
			[x_1].[c4],
			[x_1].[c5],
			[x_1].[cond_1] as [cond_1_1],
			[x_1].[ItemCode],
			[x_1].[Color],
			[x_1].[c1],
			[x_1].[c2]
		FROM
			(
				SELECT
					[x].[cond],
					[x].[cond_1],
					[x].[ItemCode],
					[x].[Color],
					[x].[ItemCode_1],
					[x].[Style_1],
					NULL as [c1],
					NULL as [c2],
					NULL as [c3],
					NULL as [c4],
					NULL as [c5]
				FROM
					(
						SELECT
							IIF([t].[Kind] = 1 OR [t].[Kind] = 2, 1, 0) as [cond],
							Substring([t].[ItemCode], 1, 2) as [ItemCode],
							[t].[Color],
							Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
							[t].[Style] as [Style_1],
							IIF([t].[Kind] = 1, 1, 0) as [cond_1]
						FROM
							[Item] [t]
					) [x]
				WHERE
					[x].[cond] = 1
				UNION ALL
				SELECT
					[t1].[cond],
					NULL as [cond_1],
					NULL as [ItemCode],
					NULL as [Color],
					NULL as [ItemCode_1],
					NULL as [Style_1],
					[t1].[ItemCode] as [c1],
					[t1].[Color] as [c2],
					[t1].[cond_1] as [c3],
					[t1].[ItemCode_1] as [c4],
					[t1].[Style_1] as [c5]
				FROM
					(
						SELECT
							IIF([t_1].[Kind] = 1 OR [t_1].[Kind] = 3, 1, 0) as [cond],
							Substring([t_1].[ItemCode], 5, 2) as [ItemCode],
							[t_1].[Color],
							Substring([t_1].[ItemCode], 7, 2) as [ItemCode_1],
							[t_1].[Style] as [Style_1],
							IIF([t_1].[Kind] = 1, 1, 0) as [cond_1]
						FROM
							[Item] [t_1]
					) [t1]
				WHERE
					[t1].[cond] = 1
			) [x_1]
	) [x_2]
WHERE
	NOT ([x_2].[cond] = 1 AND [x_2].[cond_1] = 0) OR NOT ([x_2].[cond] = 1 AND [x_2].[cond_1] = 0 AND [x_2].[c3] = 1 AND [x_2].[c3] IS NOT NULL)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x_2].[cond],
	[x_2].[cond_1_1],
	[x_2].[ItemCode],
	[x_2].[Color],
	[x_2].[c1],
	[x_2].[c2],
	[x_2].[ItemCode_1],
	[x_2].[Style_1],
	[x_2].[c3],
	[x_2].[c4],
	[x_2].[c5]
FROM
	(
		SELECT
			[x_1].[cond],
			IIF([x_1].[cond_1] IS NOT NULL, 1, 0) as [cond_1],
			[x_1].[ItemCode_1],
			[x_1].[Style_1],
			[x_1].[c3],
			[x_1].[c4],
			[x_1].[c5],
			[x_1].[cond_1] as [cond_1_1],
			[x_1].[ItemCode],
			[x_1].[Color],
			[x_1].[c1],
			[x_1].[c2]
		FROM
			(
				SELECT
					[x].[cond],
					[x].[cond_1],
					[x].[ItemCode],
					[x].[Color],
					[x].[ItemCode_1],
					[x].[Style_1],
					NULL as [c1],
					NULL as [c2],
					NULL as [c3],
					NULL as [c4],
					NULL as [c5]
				FROM
					(
						SELECT
							IIF([t].[Kind] = 1 OR [t].[Kind] = 2, 1, 0) as [cond],
							Substring([t].[ItemCode], 1, 2) as [ItemCode],
							[t].[Color],
							Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
							[t].[Style] as [Style_1],
							IIF([t].[Kind] = 1, 1, 0) as [cond_1]
						FROM
							[Item] [t]
					) [x]
				WHERE
					[x].[cond] = 1
				UNION ALL
				SELECT
					[t1].[cond],
					NULL as [cond_1],
					NULL as [ItemCode],
					NULL as [Color],
					NULL as [ItemCode_1],
					NULL as [Style_1],
					[t1].[ItemCode] as [c1],
					[t1].[Color] as [c2],
					[t1].[cond_1] as [c3],
					[t1].[ItemCode_1] as [c4],
					[t1].[Style_1] as [c5]
				FROM
					(
						SELECT
							IIF([t_1].[Kind] = 1 OR [t_1].[Kind] = 3, 1, 0) as [cond],
							Substring([t_1].[ItemCode], 5, 2) as [ItemCode],
							[t_1].[Color],
							Substring([t_1].[ItemCode], 7, 2) as [ItemCode_1],
							[t_1].[Style] as [Style_1],
							IIF([t_1].[Kind] = 1, 1, 0) as [cond_1]
						FROM
							[Item] [t_1]
					) [t1]
				WHERE
					[t1].[cond] = 1
			) [x_1]
	) [x_2]
WHERE
	[x_2].[cond] = 1 AND
	[x_2].[cond_1] = 0 AND
	[x_2].[cond] = 1 AND
	[x_2].[cond_1] = 0 AND
	[x_2].[c3] = 1

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Item]

