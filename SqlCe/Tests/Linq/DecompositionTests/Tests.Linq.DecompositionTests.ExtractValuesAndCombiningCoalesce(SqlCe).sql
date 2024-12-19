BeforeExecute
-- SqlCe

DROP TABLE [Item]

BeforeExecute
-- SqlCe

CREATE TABLE [Item]
(
	[ItemId]   Int           NOT NULL,
	[Kind]     Int           NOT NULL,
	[ItemCode] NVarChar(255)     NULL,
	[Style]    NVarChar(255)     NULL,
	[Color]    NVarChar(255)     NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY ([ItemId])
)

BeforeExecute
-- SqlCe

INSERT INTO [Item]
(
	[ItemId],
	[Kind],
	[ItemCode],
	[Style],
	[Color]
)
SELECT 1,1,'01020102','Style1','White' UNION ALL
SELECT 2,1,'01020102','Style1','White' UNION ALL
SELECT 3,1,'01020102','Style1','White' UNION ALL
SELECT 4,2,'03020302','Style3','White' UNION ALL
SELECT 5,2,'01040104','Style1','Blue' UNION ALL
SELECT 6,2,'01010104','Style1','Black' UNION ALL
SELECT 7,3,'03020302','Style3','White' UNION ALL
SELECT 8,3,'01040104','Style1','Blue' UNION ALL
SELECT 9,3,'01010104','Style1','Black'

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [t].[Kind] = 1 OR [t].[Kind] = 2 THEN 1
		ELSE 0
	END as [cond],
	[t].[Kind],
	Substring([t].[ItemCode], 1, 2) as [ItemCode],
	[t].[Color],
	Substring([t].[ItemCode], 3, 2) as [ItemCode_1],
	[t].[Style] as [Style_1],
	CASE
		WHEN [t].[Kind] = 1 OR [t].[Kind] = 3 THEN 1
		ELSE 0
	END as [cond_1],
	Substring([t].[ItemCode], 5, 2) as [ItemCode_2],
	Substring([t].[ItemCode], 7, 2) as [ItemCode_3]
FROM
	[Item] [t]

BeforeExecute
-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style] as [Style_1],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlCe

SELECT
	[x_1].[cond_1] as [cond],
	[x_1].[Kind],
	[x_1].[ItemCode],
	[x_1].[Color],
	[x_1].[ItemCode_2] as [ItemCode_1],
	[x_1].[Style_1],
	[x_1].[cond_3] as [cond_1],
	[x_1].[ItemCode_1] as [ItemCode_2],
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

BeforeExecute
-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style] as [Style_1],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlCe

SELECT
	[x_1].[cond_1] as [cond],
	[x_1].[Kind],
	[x_1].[ItemCode],
	[x_1].[Color],
	[x_1].[ItemCode_2] as [ItemCode_1],
	[x_1].[Style_1],
	[x_1].[cond_3] as [cond_1],
	[x_1].[ItemCode_1] as [ItemCode_2],
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

BeforeExecute
-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style] as [Style_1],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlCe

SELECT
	[x_1].[cond_1] as [cond],
	[x_1].[Kind],
	[x_1].[ItemCode_2] as [ItemCode],
	[x_1].[Color],
	[x_1].[ItemCode] as [ItemCode_1],
	[x_1].[Style_1],
	[x_1].[cond_2] as [cond_1],
	[x_1].[ItemCode_3] as [ItemCode_2],
	[x_1].[ItemCode_1] as [ItemCode_3]
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

BeforeExecute
-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style] as [Style_1],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlCe

SELECT
	[x_1].[cond_1] as [cond],
	[x_1].[Kind],
	[x_1].[ItemCode_2] as [ItemCode],
	[x_1].[Color],
	[x_1].[ItemCode] as [ItemCode_1],
	[x_1].[Style_1],
	[x_1].[cond_2] as [cond_1],
	[x_1].[ItemCode_3] as [ItemCode_2],
	[x_1].[ItemCode_1] as [ItemCode_3]
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

BeforeExecute
-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style] as [Style_1],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Item]

