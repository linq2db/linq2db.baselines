BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [StringEnumTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [StringEnumTable]
(
	[ColumnNullable] NVarChar(8)     NULL,
	[Column]         NVarChar(8) NOT NULL,
	[Id]             Int         NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 NVarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [StringEnumTable]
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
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [StringEnumTable]
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
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = 'value=2' AND [r].[ColumnNullable] = 'value=33'

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[StringEnumTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 NVarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [StringEnumTable]
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
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [StringEnumTable]
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
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[StringEnumTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 NVarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [StringEnumTable]
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
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [StringEnumTable]
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
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[StringEnumTable] [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 NVarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [StringEnumTable]
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
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [StringEnumTable]
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
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [StringEnumTable]

