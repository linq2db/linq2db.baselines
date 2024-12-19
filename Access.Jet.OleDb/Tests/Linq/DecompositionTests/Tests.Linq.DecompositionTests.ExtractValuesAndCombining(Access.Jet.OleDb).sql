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
	[x].[cond],
	[x].[Kind],
	[x].[ItemCode],
	[x].[Color],
	[x].[ItemCode_1],
	[x].[Style_1]
FROM
	(
		SELECT
			IIF([i].[Kind] = 1 OR [i].[Kind] = 2, True, False) as [cond],
			IIF([i].[Kind] = 1, True, False) as [cond_1],
			Mid([i].[ItemCode], 1, 2) as [ItemCode],
			[i].[Color],
			[i].[Kind],
			Mid([i].[ItemCode], 3, 2) as [ItemCode_1],
			[i].[Style] as [Style_1]
		FROM
			[Item] [i]
		WHERE
			[i].[Kind] = 1 OR [i].[Kind] = 2
	) [x]
WHERE
	NOT ([x].[cond] AND [x].[cond_1] OR NOT [x].[cond])

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
	[x].[cond],
	[x].[ItemCode],
	[x].[Color],
	[x].[Kind],
	[x].[ItemCode_1],
	[x].[Style_1]
FROM
	(
		SELECT
			IIF([i].[Kind] = 1 OR [i].[Kind] = 3, True, False) as [cond],
			Mid([i].[ItemCode], 5, 2) as [ItemCode],
			[i].[Color],
			[i].[Kind],
			Mid([i].[ItemCode], 7, 2) as [ItemCode_1],
			[i].[Style] as [Style_1]
		FROM
			[Item] [i]
		WHERE
			[i].[Kind] = 1 OR [i].[Kind] = 3
	) [x]
WHERE
	[x].[cond]

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
	[t1].[cond],
	[t1].[Color],
	[t1].[ItemCode],
	[t1].[Name],
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	[t1].[ItemCode_1],
	[t1].[Name_1],
	IIF(False, False, NULL),
	IIF(False, '', NULL),
	IIF(False, '', NULL)
FROM
	(
		SELECT
			IIF([t].[Kind] = 1 OR [t].[Kind] = 2, True, False) as [cond],
			Mid([t].[ItemCode], 1, 2) as [ItemCode],
			[t].[Color] as [Name],
			Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
			[t].[Style] as [Name_1],
			IIF([t].[Kind] = 1, True, False) as [Color]
		FROM
			[Item] [t]
	) [t1]
WHERE
	[t1].[cond]
UNION ALL
SELECT
	[t2].[cond],
	IIF(False, False, NULL),
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	[t2].[ItemCode],
	[t2].[Color],
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	[t2].[cond_1],
	[t2].[ItemCode_1],
	[t2].[Style_1]
FROM
	(
		SELECT
			IIF([t_1].[Kind] = 1 OR [t_1].[Kind] = 3, True, False) as [cond],
			Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
			[t_1].[Color],
			Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
			[t_1].[Style] as [Style_1],
			IIF([t_1].[Kind] = 1, True, False) as [cond_1]
		FROM
			[Item] [t_1]
	) [t2]
WHERE
	[t2].[cond]

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
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [Size_1],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					IIF([t].[Kind] = 1 OR [t].[Kind] = 2, True, False) as [cond],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					IIF([t].[Kind] = 1, True, False) as [cond_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[cond]
		UNION ALL
		SELECT
			[t1].[cond] as [Color],
			IIF(False, False, NULL) as [Color_1],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[cond_1] as [Size_1],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					IIF([t_1].[Kind] = 1 OR [t_1].[Kind] = 3, True, False) as [cond],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					IIF([t_1].[Kind] = 1, True, False) as [cond_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[cond]
	) [x_1]
WHERE
	NOT ([x_1].[Color] AND [x_1].[Color_1] IS NOT NULL AND [x_1].[Color_1] OR NOT [x_1].[Color])

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
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [Size_1],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					IIF([t].[Kind] = 1 OR [t].[Kind] = 2, True, False) as [cond],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					IIF([t].[Kind] = 1, True, False) as [cond_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[cond]
		UNION ALL
		SELECT
			[t1].[cond] as [Color],
			IIF(False, False, NULL) as [Color_1],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[cond_1] as [Size_1],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					IIF([t_1].[Kind] = 1 OR [t_1].[Kind] = 3, True, False) as [cond],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					IIF([t_1].[Kind] = 1, True, False) as [cond_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[cond]
	) [x_1]
WHERE
	[x_1].[Color] AND [x_1].[Color_1] IS NOT NULL AND [x_1].[Color_1] OR
	NOT [x_1].[Color]

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
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [Size_2],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					IIF([t].[Kind] = 1 OR [t].[Kind] = 2, True, False) as [cond],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					IIF([t].[Kind] = 1, True, False) as [cond_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[cond]
		UNION ALL
		SELECT
			[t1].[cond] as [Size_1],
			IIF(False, False, NULL) as [Color],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[cond_1] as [Size_2],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					IIF([t_1].[Kind] = 1 OR [t_1].[Kind] = 3, True, False) as [cond],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					IIF([t_1].[Kind] = 1, True, False) as [cond_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[cond]
	) [x_1]
WHERE
	NOT ([x_1].[Size_1] AND [x_1].[Color] IS NULL AND [x_1].[Size_2] OR NOT [x_1].[Size_1])

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
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [Size_2],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					IIF([t].[Kind] = 1 OR [t].[Kind] = 2, True, False) as [cond],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					IIF([t].[Kind] = 1, True, False) as [cond_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[cond]
		UNION ALL
		SELECT
			[t1].[cond] as [Size_1],
			IIF(False, False, NULL) as [Color],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[cond_1] as [Size_2],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					IIF([t_1].[Kind] = 1 OR [t_1].[Kind] = 3, True, False) as [cond],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					IIF([t_1].[Kind] = 1, True, False) as [cond_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[cond]
	) [x_1]
WHERE
	[x_1].[Size_1] AND [x_1].[Color] IS NULL AND [x_1].[Size_2] OR
	NOT [x_1].[Size_1]

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

