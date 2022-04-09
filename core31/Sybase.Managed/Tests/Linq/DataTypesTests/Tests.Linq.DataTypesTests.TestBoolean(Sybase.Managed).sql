BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BooleanTable') IS NOT NULL)
	DROP TABLE [BooleanTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BooleanTable') IS NULL)
	EXECUTE('
		CREATE TABLE [BooleanTable]
		(
			[ColumnNullable] Bit,
			[Column]         Bit NOT NULL,
			[Id]             Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [BooleanTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT 0,1,1 UNION ALL
SELECT 1,0,2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 0
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 1

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = 0 AND [r].[ColumnNullable] = 1

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [BooleanTable]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 0
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [BooleanTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 1
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 0
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [BooleanTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [BooleanTable]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [BooleanTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT 0,1,1 UNION ALL
SELECT 1,0,2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [BooleanTable]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [BooleanTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT 0,1,1 UNION ALL
SELECT 1,0,2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BooleanTable') IS NOT NULL)
	DROP TABLE [BooleanTable]

