BeforeExecute
-- SqlCe
DECLARE @Column Int -- Int32
SET     @Column = 2
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = 3

SELECT
	[r].[Id],
	[r].[Column] as [Column_1],
	[r].[ColumnNullable]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Column] as [Column_1],
	[r].[ColumnNullable]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = 2 AND [r].[ColumnNullable] = 3

BeforeExecute
-- SqlCe

DELETE FROM
	[IntEnumTable]

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[IntEnumTable]

BeforeExecute
-- SqlCe

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,1,NULL UNION ALL
SELECT 2,2,3

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[IntEnumTable]

BeforeExecute
-- SqlCe

INSERT INTO [IntEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,1,NULL UNION ALL
SELECT 2,2,3

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

