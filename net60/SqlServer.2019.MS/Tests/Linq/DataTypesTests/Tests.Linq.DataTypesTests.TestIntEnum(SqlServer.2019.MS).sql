﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [IntEnumTable]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[IntEnumTable]', N'U') IS NULL)
	CREATE TABLE [IntEnumTable]
	(
		[Id]             Int NOT NULL,
		[Column]         Int NOT NULL,
		[ColumnNullable] Int     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,1,NULL),
(2,2,3)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Column Int -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = 3

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = 2 AND [r].[ColumnNullable] = 3

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DELETE [t1]
FROM
	[IntEnumTable] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column Int -- Int32
SET     @Column = 1
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = NULL

INSERT INTO [IntEnumTable]
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column Int -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = 3

INSERT INTO [IntEnumTable]
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
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DELETE [t1]
FROM
	[IntEnumTable] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,1,NULL),
(2,2,3)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DELETE [t1]
FROM
	[IntEnumTable] [t1]

BeforeExecute
INSERT BULK [IntEnumTable](Id, Column, ColumnNullable)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [IntEnumTable]

