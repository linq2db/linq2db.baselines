BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [DateOnlyTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NULL)
	CREATE TABLE [DateOnlyTable]
	(
		[ColumnNullable] Date     NULL,
		[Column]         Date NOT NULL,
		[Id]             Int  NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,DATEFROMPARTS(1950, 1, 1),1),
(DATEFROMPARTS(2200, 1, 1),DATEFROMPARTS(2020, 2, 29),2)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Column_1 Date
SET     @Column_1 = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = DATETIME2FROMPARTS(2200, 1, 1, 0, 0, 0, 0, 7)

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = DATEFROMPARTS(2020, 2, 29) AND [r].[ColumnNullable] = DATEFROMPARTS(2200, 1, 1)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ColumnNullable Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 Date
SET     @Column_1 = DATETIME2FROMPARTS(1950, 1, 1, 0, 0, 0, 0, 7)
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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ColumnNullable Date
SET     @ColumnNullable = DATETIME2FROMPARTS(2200, 1, 1, 0, 0, 0, 0, 7)
DECLARE @Column_1 Date
SET     @Column_1 = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)
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
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,DATEFROMPARTS(1950, 1, 1),1),
(DATEFROMPARTS(2200, 1, 1),DATEFROMPARTS(2020, 2, 29),2)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
INSERT BULK [DateOnlyTable](ColumnNullable, Column, Id)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [DateOnlyTable]

