BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NULL)
	CREATE TABLE [DateOnlyTable]
	(
		[ColumnNullable] DateTime     NULL,
		[Column]         DateTime NOT NULL,
		[Id]             Int      NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,CAST('1900-01-01T00:00:00.000' AS DATETIME),1 UNION ALL
SELECT CAST('2200-01-01T00:00:00.000' AS DATETIME),CAST('2020-02-29T00:00:00.000' AS DATETIME),2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Column_1 Date
SET     @Column_1 = CAST('2020-02-29T00:00:00.000' AS DATETIME)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = CAST('2200-01-01T00:00:00.000' AS DATETIME)

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = CAST('2020-02-29T00:00:00.000' AS DATETIME) AND
	[r].[ColumnNullable] = CAST('2200-01-01T00:00:00.000' AS DATETIME)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = CAST('1900-01-01T00:00:00.000' AS DATETIME)
DECLARE @Id Int -- Int32
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
-- SqlServer.2005.MS SqlServer.2005
DECLARE @ColumnNullable Date
SET     @ColumnNullable = CAST('2200-01-01T00:00:00.000' AS DATETIME)
DECLARE @Column_1 Date
SET     @Column_1 = CAST('2020-02-29T00:00:00.000' AS DATETIME)
DECLARE @Id Int -- Int32
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
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,CAST('1900-01-01T00:00:00.000' AS DATETIME),1 UNION ALL
SELECT CAST('2200-01-01T00:00:00.000' AS DATETIME),CAST('2020-02-29T00:00:00.000' AS DATETIME),2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
INSERT BULK [DateOnlyTable](ColumnNullable, Column, Id)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

