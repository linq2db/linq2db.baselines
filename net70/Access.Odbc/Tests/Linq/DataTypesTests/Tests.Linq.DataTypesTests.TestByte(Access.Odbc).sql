BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ByteTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [ByteTable]
(
	[ColumnNullable] TinyInt     NULL,
	[Column]         TinyInt NOT NULL,
	[Id]             Int     NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = 255 AND [r].[ColumnNullable] = 2

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[ByteTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[ByteTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[ByteTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ByteTable]

