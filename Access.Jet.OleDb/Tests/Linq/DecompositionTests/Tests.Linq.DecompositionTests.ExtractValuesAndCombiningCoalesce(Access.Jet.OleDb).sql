BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Item]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Item]
(
	[ItemId]   Int           NOT NULL,
	[Kind]     Int           NOT NULL,
	[ItemCode] NVarChar(255)     NULL,
	[Style]    NVarChar(255)     NULL,
	[Color]    NVarChar(255)     NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([ItemId])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 1
DECLARE @Kind Integer -- Int32
SET     @Kind = 1
DECLARE @ItemCode VarWChar(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style VarWChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarWChar(5) -- String
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 2
DECLARE @Kind Integer -- Int32
SET     @Kind = 1
DECLARE @ItemCode VarWChar(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style VarWChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarWChar(5) -- String
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 3
DECLARE @Kind Integer -- Int32
SET     @Kind = 1
DECLARE @ItemCode VarWChar(8) -- String
SET     @ItemCode = '01020102'
DECLARE @Style VarWChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarWChar(5) -- String
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 4
DECLARE @Kind Integer -- Int32
SET     @Kind = 2
DECLARE @ItemCode VarWChar(8) -- String
SET     @ItemCode = '03020302'
DECLARE @Style VarWChar(6) -- String
SET     @Style = 'Style3'
DECLARE @Color VarWChar(5) -- String
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 5
DECLARE @Kind Integer -- Int32
SET     @Kind = 2
DECLARE @ItemCode VarWChar(8) -- String
SET     @ItemCode = '01040104'
DECLARE @Style VarWChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarWChar(4) -- String
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 6
DECLARE @Kind Integer -- Int32
SET     @Kind = 2
DECLARE @ItemCode VarWChar(8) -- String
SET     @ItemCode = '01010104'
DECLARE @Style VarWChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarWChar(5) -- String
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 7
DECLARE @Kind Integer -- Int32
SET     @Kind = 3
DECLARE @ItemCode VarWChar(8) -- String
SET     @ItemCode = '03020302'
DECLARE @Style VarWChar(6) -- String
SET     @Style = 'Style3'
DECLARE @Color VarWChar(5) -- String
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 8
DECLARE @Kind Integer -- Int32
SET     @Kind = 3
DECLARE @ItemCode VarWChar(8) -- String
SET     @ItemCode = '01040104'
DECLARE @Style VarWChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarWChar(4) -- String
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @ItemId Integer -- Int32
SET     @ItemId = 9
DECLARE @Kind Integer -- Int32
SET     @Kind = 3
DECLARE @ItemCode VarWChar(8) -- String
SET     @ItemCode = '01010104'
DECLARE @Style VarWChar(6) -- String
SET     @Style = 'Style1'
DECLARE @Color VarWChar(5) -- String
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
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[Kind] = 1 OR [t].[Kind] = 2,
	[t].[Kind],
	Mid([t].[ItemCode], 1, 2),
	[t].[Color],
	Mid([t].[ItemCode], 3, 2),
	[t].[Style],
	[t].[Kind] = 1 OR [t].[Kind] = 3,
	Mid([t].[ItemCode], 5, 2),
	Mid([t].[ItemCode], 7, 2)
FROM
	[Item] [t]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [cond],
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [cond_1],
			[x].[Kind] = 1 as [cond_2],
			Mid([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color],
			[x].[Kind] = 1 OR [x].[Kind] = 3 as [cond_3],
			Mid([x].[ItemCode], 5, 2) as [ItemCode_1],
			[x].[Kind],
			Mid([x].[ItemCode], 3, 2) as [ItemCode_2],
			[x].[Style] as [Style_1],
			Mid([x].[ItemCode], 7, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	NOT ([x_1].[cond] AND ([x_1].[cond_1] AND [x_1].[cond_2] OR NOT [x_1].[cond_1]) OR NOT [x_1].[cond] AND NOT [x_1].[cond_3])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [cond],
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [cond_1],
			[x].[Kind] = 1 as [cond_2],
			Mid([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color],
			[x].[Kind] = 1 OR [x].[Kind] = 3 as [cond_3],
			Mid([x].[ItemCode], 5, 2) as [ItemCode_1],
			[x].[Kind],
			Mid([x].[ItemCode], 3, 2) as [ItemCode_2],
			[x].[Style] as [Style_1],
			Mid([x].[ItemCode], 7, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	[x_1].[cond] AND ([x_1].[cond_1] AND [x_1].[cond_2] OR NOT [x_1].[cond_1]) OR
	NOT [x_1].[cond] AND NOT [x_1].[cond_3]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [cond],
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [cond_1],
			Mid([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			[x].[Kind] = 1 OR [x].[Kind] = 3 as [cond_2],
			[x].[Kind] = 1 as [cond_3],
			Mid([x].[ItemCode], 7, 2) as [ItemCode_1],
			[x].[Kind],
			Mid([x].[ItemCode], 1, 2) as [ItemCode_2],
			[x].[Color],
			Mid([x].[ItemCode], 5, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	NOT ([x_1].[cond] AND NOT [x_1].[cond_1] OR NOT [x_1].[cond] AND ([x_1].[cond_2] AND [x_1].[cond_3] OR NOT [x_1].[cond_2]))

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [cond],
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [cond_1],
			Mid([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			[x].[Kind] = 1 OR [x].[Kind] = 3 as [cond_2],
			[x].[Kind] = 1 as [cond_3],
			Mid([x].[ItemCode], 7, 2) as [ItemCode_1],
			[x].[Kind],
			Mid([x].[ItemCode], 1, 2) as [ItemCode_2],
			[x].[Color],
			Mid([x].[ItemCode], 5, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	[x_1].[cond] AND NOT [x_1].[cond_1] OR NOT [x_1].[cond] AND ([x_1].[cond_2] AND [x_1].[cond_3] OR NOT [x_1].[cond_2])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Item]

