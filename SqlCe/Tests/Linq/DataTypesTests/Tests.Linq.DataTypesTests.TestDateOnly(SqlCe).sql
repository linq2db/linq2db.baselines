-- SqlCe
DECLARE @Column DateTime
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = '2020-01-01'

SELECT
	[r].[Id],
	[r].[Column] as [Column_1],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- SqlCe

SELECT
	[r].[Id],
	[r].[Column] as [Column_1],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = '2020-02-29' AND [r].[ColumnNullable] = '2020-01-01'

-- SqlCe

DELETE FROM
	[DateOnlyTable]

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column DateTime
SET     @Column = '1980-01-01'
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

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column DateTime
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = '2020-01-01'

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

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlCe

DELETE FROM
	[DateOnlyTable]

-- SqlCe

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'1980-01-01',NULL UNION ALL
SELECT 2,'2020-02-29','2020-01-01'

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlCe

DELETE FROM
	[DateOnlyTable]

-- SqlCe

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,'1980-01-01',NULL UNION ALL
SELECT 2,'2020-02-29','2020-01-01'

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

