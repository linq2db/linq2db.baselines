BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Column Bit -- Boolean
SET     @Column = 0
DECLARE @ColumnNullable Bit -- Boolean
SET     @ColumnNullable = 1

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = 0 AND [r].[ColumnNullable] = 1

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column Bit -- Boolean
SET     @Column = 1
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
	@Column,
	@ColumnNullable
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column Bit -- Boolean
SET     @Column = 0
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
	@Column,
	@ColumnNullable
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[BooleanTable] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[BooleanTable] [t1]

BeforeExecute
INSERT BULK [BooleanTable](Id, Column, ColumnNullable)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

