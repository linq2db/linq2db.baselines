﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [DateOnlyTable]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NULL)
	CREATE TABLE [DateOnlyTable]
	(
		[Id]             Int  NOT NULL,
		[Column]         Date NOT NULL,
		[ColumnNullable] Date     NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,DATEFROMPARTS(1950, 1, 1),NULL),
(2,DATEFROMPARTS(2020, 2, 29),DATEFROMPARTS(2200, 1, 1))

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Column Date
SET     @Column = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = DATETIME2FROMPARTS(2200, 1, 1, 0, 0, 0, 0, 7)

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = DATEFROMPARTS(2020, 2, 29) AND [r].[ColumnNullable] = DATEFROMPARTS(2200, 1, 1)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column Date
SET     @Column = DATETIME2FROMPARTS(1950, 1, 1, 0, 0, 0, 0, 7)
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
	@Column,
	@ColumnNullable
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column Date
SET     @Column = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)
DECLARE @ColumnNullable Date
SET     @ColumnNullable = DATETIME2FROMPARTS(2200, 1, 1, 0, 0, 0, 0, 7)

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
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,DATEFROMPARTS(1950, 1, 1),NULL),
(2,DATEFROMPARTS(2020, 2, 29),DATEFROMPARTS(2200, 1, 1))

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [t1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
INSERT BULK [DateOnlyTable](Id, Column, ColumnNullable)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [DateOnlyTable]

