BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DateOnlyTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DateOnlyTable]
(
	[ColumnNullable] Date     NULL,
	[Column]         Date NOT NULL,
	[Id]             Int  NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = #1900-01-01#
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [DateOnlyTable]
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
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2200-01-01#
DECLARE @Column_1 Date
SET     @Column_1 = #2020-02-29#
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [DateOnlyTable]
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
DECLARE @Column_1 Date
SET     @Column_1 = #2020-02-29#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2200-01-01#

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = #2020-02-29# AND [r].[ColumnNullable] = #2200-01-01#

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = #1900-01-01#
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [DateOnlyTable]
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
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2200-01-01#
DECLARE @Column_1 Date
SET     @Column_1 = #2020-02-29#
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [DateOnlyTable]
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
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = #1900-01-01#
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [DateOnlyTable]
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
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2200-01-01#
DECLARE @Column_1 Date
SET     @Column_1 = #2020-02-29#
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [DateOnlyTable]
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
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = #1900-01-01#
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [DateOnlyTable]
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
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2200-01-01#
DECLARE @Column_1 Date
SET     @Column_1 = #2020-02-29#
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [DateOnlyTable]
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
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DateOnlyTable]

