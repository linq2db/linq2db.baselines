BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [ByteTable]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[ByteTable]', N'U') IS NULL)
	CREATE TABLE [ByteTable]
	(
		[Id]             Int     NOT NULL,
		[Column]         TinyInt NOT NULL,
		[ColumnNullable] TinyInt     NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [ByteTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,1,NULL),
(2,255,2)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = 255 AND [r].[ColumnNullable] = 2

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [t1]
FROM
	[ByteTable] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 1
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL

INSERT INTO [ByteTable]
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
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 TinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable TinyInt(1) -- Byte
SET     @ColumnNullable = 2

INSERT INTO [ByteTable]
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
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [t1]
FROM
	[ByteTable] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [ByteTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,1,NULL),
(2,255,2)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [t1]
FROM
	[ByteTable] [t1]

BeforeExecute
INSERT BULK [ByteTable](Id, Column, ColumnNullable)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [ByteTable]

