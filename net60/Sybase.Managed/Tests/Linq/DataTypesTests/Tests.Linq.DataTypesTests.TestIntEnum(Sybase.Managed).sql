BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IntEnumTable') IS NOT NULL)
	DROP TABLE [IntEnumTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IntEnumTable') IS NULL)
	EXECUTE('
		CREATE TABLE [IntEnumTable]
		(
			[ColumnNullable] Int     NULL,
			[Column]         Int NOT NULL,
			[Id]             Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 3,2,2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Column_1 Unsupported -- Guid
SET     @Column_1 = 2
DECLARE @ColumnNullable Unsupported -- Guid
SET     @ColumnNullable = 3

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = 2 AND [r].[ColumnNullable] = 3

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [IntEnumTable]
FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [IntEnumTable]
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
DECLARE @ColumnNullable Integer -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Integer -- Int32
SET     @Column_1 = 2
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [IntEnumTable]
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
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [IntEnumTable]
FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 3,2,2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [IntEnumTable]
FROM
	[IntEnumTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 3,2,2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IntEnumTable') IS NOT NULL)
	DROP TABLE [IntEnumTable]

