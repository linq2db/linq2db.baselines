BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [BooleanTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [BooleanTable]
(
	[ColumnNullable] Bit     NULL,
	[Column]         Bit NOT NULL,
	[Id]             Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = False
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = True
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [BooleanTable]
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
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = True
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = False
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [BooleanTable]
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
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = False
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = True

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
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
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = False
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = True
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [BooleanTable]
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
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = True
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = False
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [BooleanTable]
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
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[BooleanTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = False
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = True
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [BooleanTable]
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
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = True
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = False
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [BooleanTable]
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
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[BooleanTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = False
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = True
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [BooleanTable]
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
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = True
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = False
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [BooleanTable]
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
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [BooleanTable]

