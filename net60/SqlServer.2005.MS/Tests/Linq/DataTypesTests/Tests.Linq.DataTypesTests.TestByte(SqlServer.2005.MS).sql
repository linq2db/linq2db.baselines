BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[ByteTable]', N'U') IS NOT NULL)
	DROP TABLE [ByteTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[ByteTable]', N'U') IS NULL)
	CREATE TABLE [ByteTable]
	(
		[ColumnNullable] TinyInt     NULL,
		[Column]         TinyInt NOT NULL,
		[Id]             Int     NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 2,255,2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = 255 AND [r].[ColumnNullable] = 2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[ByteTable] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [ByteTable]
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
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [ByteTable]
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
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[ByteTable] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 2,255,2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[ByteTable] [t1]

BeforeExecute
INSERT BULK [ByteTable](ColumnNullable, Column, Id)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[ByteTable]', N'U') IS NOT NULL)
	DROP TABLE [ByteTable]

