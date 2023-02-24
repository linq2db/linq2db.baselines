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
			[Id]             Int NOT NULL,
			[Column]         Bit NOT NULL,
			[ColumnNullable] Bit
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,1,0 UNION ALL
SELECT 2,0,1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 0
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 1

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 1
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 0

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 0
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 1

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
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
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,1,0 UNION ALL
SELECT 2,0,1

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
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
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,1,0 UNION ALL
SELECT 2,0,1

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BooleanTable') IS NOT NULL)
	DROP TABLE [BooleanTable]

