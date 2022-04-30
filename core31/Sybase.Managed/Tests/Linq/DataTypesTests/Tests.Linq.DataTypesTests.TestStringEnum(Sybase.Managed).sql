BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StringEnumTable') IS NOT NULL)
	DROP TABLE [StringEnumTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StringEnumTable') IS NULL)
	EXECUTE('
		CREATE TABLE [StringEnumTable]
		(
			[ColumnNullable] NVarChar(8)     NULL,
			[Column]         NVarChar(8) NOT NULL,
			[Id]             Int         NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [StringEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'val=1',1 UNION ALL
SELECT 'value=33','value=2',2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Column_1 Unsupported -- Guid
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable Unsupported -- Guid
SET     @ColumnNullable = 'value=33'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = 'value=2' AND [r].[ColumnNullable] = 'value=33'

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [StringEnumTable]
FROM
	[StringEnumTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ColumnNullable UniVarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 UniVarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [StringEnumTable]
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
DECLARE @ColumnNullable UniVarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 UniVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [StringEnumTable]
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
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [StringEnumTable]
FROM
	[StringEnumTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [StringEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'val=1',1 UNION ALL
SELECT 'value=33','value=2',2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [StringEnumTable]
FROM
	[StringEnumTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [StringEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'val=1',1 UNION ALL
SELECT 'value=33','value=2',2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StringEnumTable') IS NOT NULL)
	DROP TABLE [StringEnumTable]

