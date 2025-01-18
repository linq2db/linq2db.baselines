BeforeExecute
-- SqlCe
DECLARE @Column DateTime
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = '2200-01-01'

SELECT
	[r].[Id],
	[r].[Column] as [Column_1],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Column] as [Column_1],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = '2020-02-29' AND [r].[ColumnNullable] = '2200-01-01'

BeforeExecute
-- SqlCe

DELETE FROM
	[DateOnlyTable]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column DateTime
SET     @Column = '1950-01-01'
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = NULL

INSERT INTO [DateOnlyTable]
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
DECLARE @Column DateTime
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = '2200-01-01'

INSERT INTO [DateOnlyTable]
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
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[DateOnlyTable]

BeforeExecute
-- SqlCe

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'1950-01-01',NULL UNION ALL
SELECT 2,'2020-02-29','2200-01-01'

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[DateOnlyTable]

BeforeExecute
-- SqlCe

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'1950-01-01',NULL UNION ALL
SELECT 2,'2020-02-29','2200-01-01'

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

