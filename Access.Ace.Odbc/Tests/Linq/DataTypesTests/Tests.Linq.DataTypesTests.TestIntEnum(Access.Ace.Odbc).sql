BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [IntEnumTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [IntEnumTable]
(
	[Id]             Int NOT NULL,
	[Column]         Int NOT NULL,
	[ColumnNullable] Int     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 1
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [IntEnumTable]
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
DECLARE @Column  -- Int32
SET     @Column = 2
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = 3

INSERT INTO [IntEnumTable]
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
DECLARE @Column  -- Int32
SET     @Column = 2
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = 3

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = 2 AND [r].[ColumnNullable] = 3

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 1
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [IntEnumTable]
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
DECLARE @Column  -- Int32
SET     @Column = 2
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = 3

INSERT INTO [IntEnumTable]
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
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 1
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [IntEnumTable]
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
DECLARE @Column  -- Int32
SET     @Column = 2
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = 3

INSERT INTO [IntEnumTable]
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
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column  -- Int32
SET     @Column = 1
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [IntEnumTable]
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
DECLARE @Column  -- Int32
SET     @Column = 2
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = 3

INSERT INTO [IntEnumTable]
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
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [IntEnumTable]

