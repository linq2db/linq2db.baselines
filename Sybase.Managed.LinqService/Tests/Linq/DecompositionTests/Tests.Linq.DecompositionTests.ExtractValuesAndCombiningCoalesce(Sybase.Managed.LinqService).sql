BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Item') IS NOT NULL)
	DROP TABLE [Item]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Item') IS NULL)
	EXECUTE('
		CREATE TABLE [Item]
		(
			[ItemId]   Int           NOT NULL,
			[Kind]     Int           NOT NULL,
			[ItemCode] NVarChar(255)     NULL,
			[Style]    NVarChar(255)     NULL,
			[Color]    NVarChar(255)     NULL,

			CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([ItemId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 1
DECLARE @Kind Integer -- Int32
SET     @Kind = 1
DECLARE @ItemCode UniVarChar(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style UniVarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color UniVarChar(5) -- String
SET     @Color = 'White'

INSERT INTO [Item]
(
	[ItemId],
	[Kind],
	[ItemCode],
	[Style],
	[Color]
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 2
DECLARE @Kind Integer -- Int32
SET     @Kind = 1
DECLARE @ItemCode UniVarChar(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style UniVarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color UniVarChar(5) -- String
SET     @Color = 'White'

INSERT INTO [Item]
(
	[ItemId],
	[Kind],
	[ItemCode],
	[Style],
	[Color]
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 3
DECLARE @Kind Integer -- Int32
SET     @Kind = 1
DECLARE @ItemCode UniVarChar(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style UniVarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color UniVarChar(5) -- String
SET     @Color = 'White'

INSERT INTO [Item]
(
	[ItemId],
	[Kind],
	[ItemCode],
	[Style],
	[Color]
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 4
DECLARE @Kind Integer -- Int32
SET     @Kind = 2
DECLARE @ItemCode UniVarChar(8) -- String
SET     @ItemCode = '03020302'
DECLARE @Style UniVarChar(6) -- String
SET     @Style = 'Style3'
DECLARE @Color UniVarChar(5) -- String
SET     @Color = 'White'

INSERT INTO [Item]
(
	[ItemId],
	[Kind],
	[ItemCode],
	[Style],
	[Color]
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 5
DECLARE @Kind Integer -- Int32
SET     @Kind = 2
DECLARE @ItemCode UniVarChar(8) -- String
SET     @ItemCode = '01040104'
DECLARE @Style UniVarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color UniVarChar(4) -- String
SET     @Color = 'Blue'

INSERT INTO [Item]
(
	[ItemId],
	[Kind],
	[ItemCode],
	[Style],
	[Color]
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 6
DECLARE @Kind Integer -- Int32
SET     @Kind = 2
DECLARE @ItemCode UniVarChar(8) -- String
SET     @ItemCode = '01010104'
DECLARE @Style UniVarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color UniVarChar(5) -- String
SET     @Color = 'Black'

INSERT INTO [Item]
(
	[ItemId],
	[Kind],
	[ItemCode],
	[Style],
	[Color]
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 7
DECLARE @Kind Integer -- Int32
SET     @Kind = 3
DECLARE @ItemCode UniVarChar(8) -- String
SET     @ItemCode = '03020302'
DECLARE @Style UniVarChar(6) -- String
SET     @Style = 'Style3'
DECLARE @Color UniVarChar(5) -- String
SET     @Color = 'White'

INSERT INTO [Item]
(
	[ItemId],
	[Kind],
	[ItemCode],
	[Style],
	[Color]
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 8
DECLARE @Kind Integer -- Int32
SET     @Kind = 3
DECLARE @ItemCode UniVarChar(8) -- String
SET     @ItemCode = '01040104'
DECLARE @Style UniVarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color UniVarChar(4) -- String
SET     @Color = 'Blue'

INSERT INTO [Item]
(
	[ItemId],
	[Kind],
	[ItemCode],
	[Style],
	[Color]
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 9
DECLARE @Kind Integer -- Int32
SET     @Kind = 3
DECLARE @ItemCode UniVarChar(8) -- String
SET     @ItemCode = '01010104'
DECLARE @Style UniVarChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color UniVarChar(5) -- String
SET     @Color = 'Black'

INSERT INTO [Item]
(
	[ItemId],
	[Kind],
	[ItemCode],
	[Style],
	[Color]
)
VALUES
(
	@ItemId,
	@Kind,
	@ItemCode,
	@Style,
	@Color
)

BeforeExecute
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Item') IS NOT NULL)
	DROP TABLE [Item]

