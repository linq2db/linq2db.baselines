﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DateOnlyTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DateOnlyTable]
(
	[Id]             Int  NOT NULL,
	[Column]         Date NOT NULL,
	[ColumnNullable] Date     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column_1 Date
SET     @Column_1 = #1950-01-01#
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

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 Date
SET     @Column_1 = #2020-02-29#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2200-01-01#

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

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Column_1 Date
SET     @Column_1 = #2020-02-29#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2200-01-01#

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column_1 Date
SET     @Column_1 = #1950-01-01#
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

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 Date
SET     @Column_1 = #2020-02-29#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2200-01-01#

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

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column_1 Date
SET     @Column_1 = #1950-01-01#
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

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 Date
SET     @Column_1 = #2020-02-29#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2200-01-01#

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

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column_1 Date
SET     @Column_1 = #1950-01-01#
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

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 Date
SET     @Column_1 = #2020-02-29#
DECLARE @ColumnNullable Date
SET     @ColumnNullable = #2200-01-01#

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

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DateOnlyTable]

