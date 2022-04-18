BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [DateOnlyTable]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NULL)
	CREATE TABLE [DateOnlyTable]
	(
		[ColumnNullable] Date     NULL,
		[Column]         Date NOT NULL,
		[Id]             Int  NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,'1900-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Column_1 Date
SET     @Column_1 = '2020-02-29T00:00:00.0000000'
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2200-01-01T00:00:00.0000000'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = '2020-02-29' AND [r].[ColumnNullable] = '2200-01-01'

BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = '1900-01-01T00:00:00.0000000'
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
-- SqlServer.SA SqlServer.2019
DECLARE @ColumnNullable Date
SET     @ColumnNullable = '2200-01-01T00:00:00.0000000'
DECLARE @Column_1 Date
SET     @Column_1 = '2020-02-29T00:00:00.0000000'
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
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,'1900-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
INSERT BULK [DateOnlyTable](ColumnNullable, Column, Id)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [DateOnlyTable]

