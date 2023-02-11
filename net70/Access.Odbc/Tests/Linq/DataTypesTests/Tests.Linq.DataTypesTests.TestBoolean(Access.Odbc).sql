BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [BooleanTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [BooleanTable]
(
	[Id]             Int NOT NULL,
	[Column]         Bit NOT NULL,
	[ColumnNullable] Bit     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = True
DECLARE @ColumnNullable Bit -- Boolean
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
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = False
DECLARE @ColumnNullable Bit -- Boolean
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
-- Access.Odbc AccessODBC
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = False
DECLARE @ColumnNullable Bit -- Boolean
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
-- Access.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = False AND [r].[ColumnNullable] = True

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[BooleanTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = True
DECLARE @ColumnNullable Bit -- Boolean
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
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = False
DECLARE @ColumnNullable Bit -- Boolean
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
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[BooleanTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = True
DECLARE @ColumnNullable Bit -- Boolean
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
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = False
DECLARE @ColumnNullable Bit -- Boolean
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
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[BooleanTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = True
DECLARE @ColumnNullable Bit -- Boolean
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
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = False
DECLARE @ColumnNullable Bit -- Boolean
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
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [BooleanTable]

