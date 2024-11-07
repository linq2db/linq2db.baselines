BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DistinctOrderByTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [DistinctOrderByTable]
(
	[Id] Int           NOT NULL,
	[F1] Int           NOT NULL,
	[F2] NVarChar(255)     NULL,
	[F3] Int           NOT NULL,

	CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @F1 Integer -- Int32
SET     @F1 = 8
DECLARE @F2 VarWChar(1) -- String
SET     @F2 = '8'
DECLARE @F3 Integer -- Int32
SET     @F3 = 5

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @F1 Integer -- Int32
SET     @F1 = 3
DECLARE @F2 VarWChar(1) -- String
SET     @F2 = '3'
DECLARE @F3 Integer -- Int32
SET     @F3 = 3

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @F1 Integer -- Int32
SET     @F1 = 2
DECLARE @F2 VarWChar(1) -- String
SET     @F2 = '2'
DECLARE @F3 Integer -- Int32
SET     @F3 = 1

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @F1 Integer -- Int32
SET     @F1 = 3
DECLARE @F2 VarWChar(1) -- String
SET     @F2 = '3'
DECLARE @F3 Integer -- Int32
SET     @F3 = 4

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @F1 Integer -- Int32
SET     @F1 = 3
DECLARE @F2 VarWChar(1) -- String
SET     @F2 = '3'
DECLARE @F3 Integer -- Int32
SET     @F3 = 7

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @F1 Integer -- Int32
SET     @F1 = 5
DECLARE @F2 VarWChar(1) -- String
SET     @F2 = '5'
DECLARE @F3 Integer -- Int32
SET     @F3 = 2

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @F1 Integer -- Int32
SET     @F1 = 2
DECLARE @F2 VarWChar(1) -- String
SET     @F2 = '2'
DECLARE @F3 Integer -- Int32
SET     @F3 = 8

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @F1 Integer -- Int32
SET     @F1 = 4
DECLARE @F2 VarWChar(1) -- String
SET     @F2 = '4'
DECLARE @F3 Integer -- Int32
SET     @F3 = 6

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t2].[F2]
FROM
	(
		SELECT DISTINCT
			[t1].[F1],
			[t1].[F2]
		FROM
			[DistinctOrderByTable] [t1]
	) [t2]
ORDER BY
	[t2].[F1] DESC

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DistinctOrderByTable]

