-- Sybase.Managed Sybase
DECLARE @Column Date
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2020-01-01'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- Sybase.Managed Sybase

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = '2020-02-29' AND [r].[ColumnNullable] = '2020-01-01'

-- Sybase.Managed Sybase

DELETE FROM [DateOnlyTable]
FROM
	[DateOnlyTable] [t1]

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = '1980-01-01'
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
	@Id,
	@Column,
	@ColumnNullable
)

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Date
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2020-01-01'

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

-- Sybase.Managed Sybase

DELETE FROM [DateOnlyTable]
FROM
	[DateOnlyTable] [t1]

-- Sybase.Managed Sybase

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'1980-01-01',NULL UNION ALL
SELECT 2,'2020-02-29','2020-01-01'

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

-- Sybase.Managed Sybase

DELETE FROM [DateOnlyTable]
FROM
	[DateOnlyTable] [t1]

-- Sybase.Managed Sybase

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'1980-01-01',NULL UNION ALL
SELECT 2,'2020-02-29','2020-01-01'

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

