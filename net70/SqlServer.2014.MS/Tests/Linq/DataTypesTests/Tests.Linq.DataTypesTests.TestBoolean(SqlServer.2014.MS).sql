BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[BooleanTable]', N'U') IS NOT NULL)
	DROP TABLE [BooleanTable]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[BooleanTable]', N'U') IS NULL)
	CREATE TABLE [BooleanTable]
	(
		[Id]             Int NOT NULL,
		[Column]         Bit NOT NULL,
		[ColumnNullable] Bit     NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,1,NULL),
(2,0,1)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 0
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 1

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = 0 AND [r].[ColumnNullable] = 1

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DELETE [t1]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 1
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = NULL

INSERT INTO [BooleanTable]
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
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 Bit -- Boolean
SET     @Column_1 = 0
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 1

INSERT INTO [BooleanTable]
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
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DELETE [t1]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [BooleanTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,1,NULL),
(2,0,1)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DELETE [t1]
FROM
	[BooleanTable] [t1]

BeforeExecute
INSERT BULK [BooleanTable](Id, Column, ColumnNullable)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[BooleanTable]', N'U') IS NOT NULL)
	DROP TABLE [BooleanTable]

