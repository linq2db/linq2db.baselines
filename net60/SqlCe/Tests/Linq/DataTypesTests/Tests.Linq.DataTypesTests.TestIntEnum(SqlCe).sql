BeforeExecute
-- SqlCe

DROP TABLE [IntEnumTable]

BeforeExecute
-- SqlCe

CREATE TABLE [IntEnumTable]
(
	[ColumnNullable] Int     NULL,
	[Column]         Int NOT NULL,
	[Id]             Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 3,2,2

BeforeExecute
-- SqlCe
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 2
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = 3

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlCe

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
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
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [IntEnumTable]
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
DECLARE @ColumnNullable Int -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1 Int -- Int32
SET     @Column_1 = 2
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [IntEnumTable]
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
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 3,2,2

BeforeExecute
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
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
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 3,2,2

BeforeExecute
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [IntEnumTable]

