-- Sybase.Managed Sybase
DECLARE @Column Bit -- Boolean
SET     @Column = 0
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 1

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- Sybase.Managed Sybase

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = 0 AND [r].[ColumnNullable] = 1

-- Sybase.Managed Sybase

DELETE FROM [BooleanTable]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Bit -- Boolean
SET     @Column = 1
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
	@Column,
	@ColumnNullable
)

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Bit -- Boolean
SET     @Column = 0
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
	@Column,
	@ColumnNullable
)

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

-- Sybase.Managed Sybase

DELETE FROM [BooleanTable]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,1,0 UNION ALL
SELECT 2,0,1

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

-- Sybase.Managed Sybase

DELETE FROM [BooleanTable]
FROM
	[BooleanTable] [t1]

-- Sybase.Managed Sybase

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,1,0 UNION ALL
SELECT 2,0,1

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

