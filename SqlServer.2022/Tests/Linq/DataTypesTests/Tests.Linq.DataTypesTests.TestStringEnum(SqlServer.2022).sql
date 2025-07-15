BeforeExecute
-- SqlServer.2022
DECLARE @Column NVarChar(4000) -- String
SET     @Column = N'value=2'
DECLARE @ColumnNullable NVarChar(4000) -- String
SET     @ColumnNullable = N'value=33'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlServer.2022

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = N'value=2' AND [r].[ColumnNullable] = N'value=33'

BeforeExecute
-- SqlServer.2022

DELETE [t1]
FROM
	[StringEnumTable] [t1]

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(8) -- String
SET     @Column = N'val=1'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = NULL

INSERT INTO [StringEnumTable]
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
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column NVarChar(8) -- String
SET     @Column = N'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = N'value=33'

INSERT INTO [StringEnumTable]
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
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2022

DELETE [t1]
FROM
	[StringEnumTable] [t1]

BeforeExecute
-- SqlServer.2022

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,N'val=1',NULL),
(2,N'value=2',N'value=33')

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2022

DELETE [t1]
FROM
	[StringEnumTable] [t1]

BeforeExecute
INSERT BULK [StringEnumTable](Id, Column, ColumnNullable)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

