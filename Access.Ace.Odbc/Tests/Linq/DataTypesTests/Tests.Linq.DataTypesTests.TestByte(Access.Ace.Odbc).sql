BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ByteTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [ByteTable]
(
	[Id]             Int     NOT NULL,
	[Column]         TinyInt NOT NULL,
	[ColumnNullable] TinyInt     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Byte
SET     @Column = 1
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL

INSERT INTO [ByteTable]
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
DECLARE @Column  -- Byte
SET     @Column = 255
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2

INSERT INTO [ByteTable]
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
DECLARE @Column  -- Byte
SET     @Column = 255
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = 255 AND [r].[ColumnNullable] = 2

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[ByteTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Byte
SET     @Column = 1
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL

INSERT INTO [ByteTable]
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
DECLARE @Column  -- Byte
SET     @Column = 255
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2

INSERT INTO [ByteTable]
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
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[ByteTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Byte
SET     @Column = 1
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL

INSERT INTO [ByteTable]
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
DECLARE @Column  -- Byte
SET     @Column = 255
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2

INSERT INTO [ByteTable]
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
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[ByteTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Byte
SET     @Column = 1
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL

INSERT INTO [ByteTable]
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
DECLARE @Column  -- Byte
SET     @Column = 255
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2

INSERT INTO [ByteTable]
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
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ByteTable]

