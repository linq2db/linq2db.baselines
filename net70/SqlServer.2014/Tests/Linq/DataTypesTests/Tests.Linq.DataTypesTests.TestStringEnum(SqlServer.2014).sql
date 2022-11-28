BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[StringEnumTable]', N'U') IS NOT NULL)
	DROP TABLE [StringEnumTable]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[StringEnumTable]', N'U') IS NULL)
	CREATE TABLE [StringEnumTable]
	(
		[ColumnNullable] NVarChar(8)     NULL,
		[Column]         NVarChar(8) NOT NULL,
		[Id]             Int         NOT NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [StringEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,N'val=1',1),
(N'value=33',N'value=2',2)

BeforeExecute
-- SqlServer.2014
DECLARE @Column_1 NVarChar(4000) -- String
SET     @Column_1 = N'value=2'
DECLARE @ColumnNullable NVarChar(4000) -- String
SET     @ColumnNullable = N'value=33'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2014

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = N'value=2' AND [r].[ColumnNullable] = N'value=33'

BeforeExecute
-- SqlServer.2014

DELETE [t1]
FROM
	[StringEnumTable] [t1]

BeforeExecute
-- SqlServer.2014
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 NVarChar(8) -- String
SET     @Column_1 = N'val=1'
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [StringEnumTable]
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
-- SqlServer.2014
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = N'value=33'
DECLARE @Column_1 NVarChar(8) -- String
SET     @Column_1 = N'value=2'
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [StringEnumTable]
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
-- SqlServer.2014

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2014

DELETE [t1]
FROM
	[StringEnumTable] [t1]

BeforeExecute
-- SqlServer.2014

INSERT INTO [StringEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,N'val=1',1),
(N'value=33',N'value=2',2)

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2014

DELETE [t1]
FROM
	[StringEnumTable] [t1]

BeforeExecute
INSERT BULK [StringEnumTable](ColumnNullable, Column, Id)

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[StringEnumTable]', N'U') IS NOT NULL)
	DROP TABLE [StringEnumTable]

