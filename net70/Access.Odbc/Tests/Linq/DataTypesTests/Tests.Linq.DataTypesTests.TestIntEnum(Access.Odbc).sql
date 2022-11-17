BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [IntEnumTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [IntEnumTable]
(
	[ColumnNullable] Int     NULL,
	[Column]         Int NOT NULL,
	[Id]             Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [IntEnumTable]
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
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 2
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [IntEnumTable]
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
DECLARE @Column_1 NVarChar -- String
SET     @Column_1 = 2
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = 3

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = 2 AND [r].[ColumnNullable] = 3

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [IntEnumTable]
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
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 2
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [IntEnumTable]
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
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [IntEnumTable]
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
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 2
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [IntEnumTable]
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
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [IntEnumTable]
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
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 2
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [IntEnumTable]
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
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [IntEnumTable]

