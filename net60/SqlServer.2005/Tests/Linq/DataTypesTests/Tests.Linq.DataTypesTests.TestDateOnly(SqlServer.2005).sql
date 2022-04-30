BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NULL)
	CREATE TABLE [DateOnlyTable]
	(
		[ColumnNullable] DateTime     NULL,
		[Column]         DateTime NOT NULL,
		[Id]             Int      NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'1900-01-01',1 UNION ALL
SELECT '2200-01-01','2020-02-29',2

BeforeExecute
-- SqlServer.2005
DECLARE @Column_1 Date
SET     @Column_1 = '2020-02-29T00:00:00'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2200-01-01T00:00:00'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2005

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = '2020-02-29' AND [r].[ColumnNullable] = '2200-01-01'

BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = '1900-01-01T00:00:00'
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
-- SqlServer.2005
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2200-01-01T00:00:00'
DECLARE @Column_1 Date
SET     @Column_1 = '2020-02-29T00:00:00'
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
-- SqlServer.2005

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
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
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'1900-01-01',1 UNION ALL
SELECT '2200-01-01','2020-02-29',2

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
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
INSERT BULK [DateOnlyTable](ColumnNullable, Column, Id)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

