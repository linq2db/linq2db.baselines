BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [BooleanTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [BooleanTable]
(
	[Id]             Int NOT NULL,
	[Column]         Bit NOT NULL,
	[ColumnNullable] Bit     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Boolean
SET     @Column = True
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = False

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Boolean
SET     @Column = False
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = True

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Column  -- Boolean
SET     @Column = False
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = True

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = False AND [r].[ColumnNullable] = True

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[BooleanTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Boolean
SET     @Column = True
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = False

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Boolean
SET     @Column = False
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = True

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[BooleanTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Boolean
SET     @Column = True
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = False

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Boolean
SET     @Column = False
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = True

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[BooleanTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Boolean
SET     @Column = True
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = False

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column  -- Boolean
SET     @Column = False
DECLARE @ColumnNullable  -- Boolean
SET     @ColumnNullable = True

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [BooleanTable]

