-- SqlServer.2005
DECLARE @Column DateTime
SET     @Column = CAST('2020-02-29T00:00:00.000' AS DATETIME)
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = CAST('2020-01-01T00:00:00.000' AS DATETIME)

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = CAST('2020-02-29' AS DATETIME) AND [r].[ColumnNullable] = CAST('2020-01-01' AS DATETIME)

-- SqlServer.2005

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column DateTime
SET     @Column = CAST('1980-01-01T00:00:00.000' AS DATETIME)
DECLARE @ColumnNullable DateTime
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

-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column DateTime
SET     @Column = CAST('2020-02-29T00:00:00.000' AS DATETIME)
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = CAST('2020-01-01T00:00:00.000' AS DATETIME)

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

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

-- SqlServer.2005

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,CAST('1980-01-01' AS DATETIME),NULL UNION ALL
SELECT 2,CAST('2020-02-29' AS DATETIME),CAST('2020-01-01' AS DATETIME)

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

INSERT BULK [DateOnlyTable](Id, Column, ColumnNullable)

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

