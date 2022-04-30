BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[BooleanTable]', N'U') IS NOT NULL)
	DROP TABLE [BooleanTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[BooleanTable]', N'U') IS NULL)
	CREATE TABLE [BooleanTable]
	(
		[ColumnNullable] Bit     NULL,
		[Column]         Bit NOT NULL,
		[Id]             Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [BooleanTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 1,0,2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 0
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 1

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = 0 AND [r].[ColumnNullable] = 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = NULL
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [BooleanTable]
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
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 1
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 0
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [BooleanTable]
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
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [BooleanTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 1,0,2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [t1]
FROM
	[BooleanTable] [t1]

BeforeExecute
INSERT BULK [BooleanTable](ColumnNullable, Column, Id)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[BooleanTable]', N'U') IS NOT NULL)
	DROP TABLE [BooleanTable]

