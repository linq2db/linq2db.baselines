BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NULL)
	CREATE TABLE [DateOnlyTable]
	(
		[Id]             Int  NOT NULL,
		[Column]         Date NOT NULL,
		[ColumnNullable] Date     NULL
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,CAST('1950-01-01' AS DATE),NULL),
(2,CAST('2020-02-29' AS DATE),CAST('2200-01-01' AS DATE))

BeforeExecute
-- SqlServer.2008
DECLARE @Column_1 Date
SET     @Column_1 = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = CAST('2200-01-01T00:00:00.0000000' AS DATETIME2)

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2008

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = CAST('2020-02-29' AS DATE) AND [r].[ColumnNullable] = CAST('2200-01-01' AS DATE)

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column_1 Date
SET     @Column_1 = CAST('1950-01-01T00:00:00.0000000' AS DATETIME2)
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 Date
SET     @Column_1 = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = CAST('2200-01-01T00:00:00.0000000' AS DATETIME2)

INSERT INTO [DateOnlyTable]
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
-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2008

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,CAST('1950-01-01' AS DATE),NULL),
(2,CAST('2020-02-29' AS DATE),CAST('2200-01-01' AS DATE))

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2008

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
INSERT BULK [DateOnlyTable](Id, Column, ColumnNullable)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

