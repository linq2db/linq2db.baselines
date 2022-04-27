BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DateOnlyTable') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DateOnlyTable') IS NULL)
	EXECUTE('
		CREATE TABLE [DateOnlyTable]
		(
			[ColumnNullable] Date     NULL,
			[Column]         Date NOT NULL,
			[Id]             Int  NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'1900-01-01',1 UNION ALL
SELECT '2200-01-01','2020-02-29',2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Column_1 Date
SET     @Column_1 = '2020-02-29'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2200-01-01'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = '2020-02-29' AND [r].[ColumnNullable] = '2200-01-01'

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [DateOnlyTable]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = '1900-01-01'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [DateOnlyTable]
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
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2200-01-01'
DECLARE @Column_1 Date
SET     @Column_1 = '2020-02-29'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [DateOnlyTable]
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
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [DateOnlyTable]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'1900-01-01',1 UNION ALL
SELECT '2200-01-01','2020-02-29',2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [DateOnlyTable]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'1900-01-01',1 UNION ALL
SELECT '2200-01-01','2020-02-29',2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DateOnlyTable') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

