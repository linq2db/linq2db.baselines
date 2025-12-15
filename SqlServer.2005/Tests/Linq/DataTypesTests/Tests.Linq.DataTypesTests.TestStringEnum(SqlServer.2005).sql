-- SqlServer.2005
DECLARE @Column NVarChar(4000) -- String
SET     @Column = N'value=2'
DECLARE @ColumnNullable NVarChar(4000) -- String
SET     @ColumnNullable = N'value=33'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = N'value=2' AND [r].[ColumnNullable] = N'value=33'

-- SqlServer.2005

DELETE [t1]
FROM
	[StringEnumTable] [t1]

-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(8) -- String
SET     @Column = N'val=1'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = NULL

INSERT INTO [StringEnumTable]
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

-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column NVarChar(8) -- String
SET     @Column = N'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = N'value=33'

INSERT INTO [StringEnumTable]
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

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

DELETE [t1]
FROM
	[StringEnumTable] [t1]

-- SqlServer.2005

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,N'val=1',NULL UNION ALL
SELECT 2,N'value=2',N'value=33'

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

DELETE [t1]
FROM
	[StringEnumTable] [t1]

INSERT BULK [StringEnumTable](Id, Column, ColumnNullable)

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

