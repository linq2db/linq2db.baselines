BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Item]', N'U') IS NOT NULL)
	DROP TABLE [Item]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ItemId Int -- Int32
SET     @ItemId = 1
DECLARE @Kind Int -- Int32
SET     @Kind = 1
DECLARE @ItemCode NVarChar(4000) -- String
SET     @ItemCode = N'01020102'
DECLARE @Style NVarChar(4000) -- String
SET     @Style = N'Style1'
DECLARE @Color NVarChar(4000) -- String
SET     @Color = N'White'

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ItemId Int -- Int32
SET     @ItemId = 2
DECLARE @Kind Int -- Int32
SET     @Kind = 1
DECLARE @ItemCode NVarChar(4000) -- String
SET     @ItemCode = N'01020102'
DECLARE @Style NVarChar(4000) -- String
SET     @Style = N'Style1'
DECLARE @Color NVarChar(4000) -- String
SET     @Color = N'White'

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ItemId Int -- Int32
SET     @ItemId = 3
DECLARE @Kind Int -- Int32
SET     @Kind = 1
DECLARE @ItemCode NVarChar(4000) -- String
SET     @ItemCode = N'01020102'
DECLARE @Style NVarChar(4000) -- String
SET     @Style = N'Style1'
DECLARE @Color NVarChar(4000) -- String
SET     @Color = N'White'

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ItemId Int -- Int32
SET     @ItemId = 4
DECLARE @Kind Int -- Int32
SET     @Kind = 2
DECLARE @ItemCode NVarChar(4000) -- String
SET     @ItemCode = N'03020302'
DECLARE @Style NVarChar(4000) -- String
SET     @Style = N'Style3'
DECLARE @Color NVarChar(4000) -- String
SET     @Color = N'White'

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ItemId Int -- Int32
SET     @ItemId = 5
DECLARE @Kind Int -- Int32
SET     @Kind = 2
DECLARE @ItemCode NVarChar(4000) -- String
SET     @ItemCode = N'01040104'
DECLARE @Style NVarChar(4000) -- String
SET     @Style = N'Style1'
DECLARE @Color NVarChar(4000) -- String
SET     @Color = N'Blue'

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ItemId Int -- Int32
SET     @ItemId = 6
DECLARE @Kind Int -- Int32
SET     @Kind = 2
DECLARE @ItemCode NVarChar(4000) -- String
SET     @ItemCode = N'01010104'
DECLARE @Style NVarChar(4000) -- String
SET     @Style = N'Style1'
DECLARE @Color NVarChar(4000) -- String
SET     @Color = N'Black'

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ItemId Int -- Int32
SET     @ItemId = 7
DECLARE @Kind Int -- Int32
SET     @Kind = 3
DECLARE @ItemCode NVarChar(4000) -- String
SET     @ItemCode = N'03020302'
DECLARE @Style NVarChar(4000) -- String
SET     @Style = N'Style3'
DECLARE @Color NVarChar(4000) -- String
SET     @Color = N'White'

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ItemId Int -- Int32
SET     @ItemId = 8
DECLARE @Kind Int -- Int32
SET     @Kind = 3
DECLARE @ItemCode NVarChar(4000) -- String
SET     @ItemCode = N'01040104'
DECLARE @Style NVarChar(4000) -- String
SET     @Style = N'Style1'
DECLARE @Color NVarChar(4000) -- String
SET     @Color = N'Blue'

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
-- SqlServer.2012.MS SqlServer.2012
DECLARE @ItemId Int -- Int32
SET     @ItemId = 9
DECLARE @Kind Int -- Int32
SET     @Kind = 3
DECLARE @ItemCode NVarChar(4000) -- String
SET     @ItemCode = N'01010104'
DECLARE @Style NVarChar(4000) -- String
SET     @Style = N'Style1'
DECLARE @Color NVarChar(4000) -- String
SET     @Color = N'Black'

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
-- SqlServer.2012.MS SqlServer.2012

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

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [cond],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [cond_1],
			IIF([x].[Kind] = 1, 1, 0) as [cond_2],
			Substring([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 3, 1, 0) as [cond_3],
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
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [cond],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [cond_1],
			IIF([x].[Kind] = 1, 1, 0) as [cond_2],
			Substring([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 3, 1, 0) as [cond_3],
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
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [cond],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [cond_1],
			Substring([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 3, 1, 0) as [cond_2],
			IIF([x].[Kind] = 1, 1, 0) as [cond_3],
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
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [cond],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 2, 1, 0) as [cond_1],
			Substring([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			IIF([x].[Kind] = 1 OR [x].[Kind] = 3, 1, 0) as [cond_2],
			IIF([x].[Kind] = 1, 1, 0) as [cond_3],
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
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Item]', N'U') IS NOT NULL)
	DROP TABLE [Item]

