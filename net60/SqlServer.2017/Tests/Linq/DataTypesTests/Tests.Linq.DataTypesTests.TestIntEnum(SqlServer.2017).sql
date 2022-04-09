BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [IntEnumTable]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[IntEnumTable]', N'U') IS NULL)
	CREATE TABLE [IntEnumTable]
	(
		[ColumnNullable] Int     NULL,
		[Column]         Int NOT NULL,
		[Id]             Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,1,1),
(3,2,2)

BeforeExecute
-- SqlServer.2017
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = 3

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2017

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = 2 AND [r].[ColumnNullable] = 3

BeforeExecute
-- SqlServer.2017

DELETE [t1]
FROM
	[IntEnumTable] [t1]

BeforeExecute
-- SqlServer.2017
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [IntEnumTable]
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
-- SqlServer.2017
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 2
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [IntEnumTable]
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
-- SqlServer.2017

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2017

DELETE [t1]
FROM
	[IntEnumTable] [t1]

BeforeExecute
-- SqlServer.2017

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,1,1),
(3,2,2)

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2017

DELETE [t1]
FROM
	[IntEnumTable] [t1]

BeforeExecute
INSERT BULK [IntEnumTable](ColumnNullable, Column, Id)

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [IntEnumTable]

