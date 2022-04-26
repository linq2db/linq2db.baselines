BeforeExecute
-- SqlCe

DROP TABLE [DateOnlyTable]

BeforeExecute
-- SqlCe

CREATE TABLE [DateOnlyTable]
(
	[ColumnNullable] DateTime     NULL,
	[Column]         DateTime NOT NULL,
	[Id]             Int      NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'1900-01-01',1 UNION ALL
SELECT '2200-01-01','2020-02-29',2

BeforeExecute
-- SqlCe
DECLARE @Column_1 DateTime
SET     @Column_1 = '2020-02-29'
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = '2200-01-01'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlCe

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
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
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = NULL
DECLARE @Column_1 DateTime
SET     @Column_1 = '1900-01-01'
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [DateOnlyTable]
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
-- SqlCe
DECLARE @ColumnNullable DateTime
SET     @ColumnNullable = '2200-01-01'
DECLARE @Column_1 DateTime
SET     @Column_1 = '2020-02-29'
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [DateOnlyTable]
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
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
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
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'1900-01-01',1 UNION ALL
SELECT '2200-01-01','2020-02-29',2

BeforeExecute
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
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
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,'1900-01-01',1 UNION ALL
SELECT '2200-01-01','2020-02-29',2

BeforeExecute
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [DateOnlyTable]

