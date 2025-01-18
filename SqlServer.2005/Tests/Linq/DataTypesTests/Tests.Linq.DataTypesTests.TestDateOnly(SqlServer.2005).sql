BeforeExecute
-- SqlServer.2005
DECLARE @Column DateTime
SET     @Column = CAST('2020-02-29T00:00:00.000' AS DATETIME)
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = CAST('2200-01-01T00:00:00.000' AS DATETIME)

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2005

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = CAST('2020-02-29' AS DATETIME) AND [r].[ColumnNullable] = CAST('2200-01-01' AS DATETIME)

BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column DateTime
SET     @Column = CAST('1950-01-01T00:00:00.000' AS DATETIME)
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

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column DateTime
SET     @Column = CAST('2020-02-29T00:00:00.000' AS DATETIME)
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = CAST('2200-01-01T00:00:00.000' AS DATETIME)

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

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2005

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,CAST('1950-01-01' AS DATETIME),NULL UNION ALL
SELECT 2,CAST('2020-02-29' AS DATETIME),CAST('2200-01-01' AS DATETIME)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
INSERT BULK [DateOnlyTable](Id, Column, ColumnNullable)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

