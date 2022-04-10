BeforeExecute
-- SqlCe

DROP TABLE [BooleanTable]

BeforeExecute
-- SqlCe

CREATE TABLE [BooleanTable]
(
	[ColumnNullable] Bit     NULL,
	[Column]         Bit NOT NULL,
	[Id]             Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [BooleanTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 1,0,2

BeforeExecute
-- SqlCe
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
-- SqlCe

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Column] = 0 AND [r].[ColumnNullable] = 1

BeforeExecute
-- SqlCe

DELETE FROM
	[BooleanTable]

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[BooleanTable]

BeforeExecute
-- SqlCe

INSERT INTO [BooleanTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 1,0,2

BeforeExecute
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[BooleanTable]

BeforeExecute
-- SqlCe

INSERT INTO [BooleanTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 1,0,2

BeforeExecute
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[BooleanTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [BooleanTable]

