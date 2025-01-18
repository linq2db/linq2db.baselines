BeforeExecute
-- SqlCe
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	[r].[Id],
	[r].[Column] as [Column_1],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Column] as [Column_1],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = 'value=2' AND [r].[ColumnNullable] = 'value=33'

BeforeExecute
-- SqlCe

DELETE FROM
	[StringEnumTable]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'val=1'
DECLARE @ColumnNullable NVarChar -- String
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
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

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
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[StringEnumTable]

BeforeExecute
-- SqlCe

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'val=1',NULL UNION ALL
SELECT 2,'value=2','value=33'

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[StringEnumTable]

BeforeExecute
-- SqlCe

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'val=1',NULL UNION ALL
SELECT 2,'value=2','value=33'

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

