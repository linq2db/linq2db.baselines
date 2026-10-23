-- Access.Jet.Odbc AccessODBC
DECLARE @Column Date
SET     @Column = #2020-02-29#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2020-01-01#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = #2020-02-29# AND [r].[ColumnNullable] = #2020-01-01#

-- Access.Jet.Odbc AccessODBC
DELETE FROM
	[DateOnlyTable] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = #1980-01-01#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL

INSERT INTO [DateOnlyTable]
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

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column Date
SET     @Column = #2020-02-29#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2020-01-01#

INSERT INTO [DateOnlyTable]
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

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.Jet.Odbc AccessODBC
DELETE FROM
	[DateOnlyTable] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = #1980-01-01#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL

INSERT INTO [DateOnlyTable]
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

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column Date
SET     @Column = #2020-02-29#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2020-01-01#

INSERT INTO [DateOnlyTable]
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

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.Jet.Odbc AccessODBC
DELETE FROM
	[DateOnlyTable] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = #1980-01-01#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL

INSERT INTO [DateOnlyTable]
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

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column Date
SET     @Column = #2020-02-29#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2020-01-01#

INSERT INTO [DateOnlyTable]
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

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

