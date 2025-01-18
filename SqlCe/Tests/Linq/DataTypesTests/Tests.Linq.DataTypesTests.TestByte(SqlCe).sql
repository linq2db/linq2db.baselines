BeforeExecute
-- SqlCe
DECLARE @Column TinyInt -- Byte
SET     @Column = 255
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = 2

SELECT
	[r].[Id],
	[r].[Column] as [Column_1],
	[r].[ColumnNullable]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Column] as [Column_1],
	[r].[ColumnNullable]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = 255 AND [r].[ColumnNullable] = 2

BeforeExecute
-- SqlCe

DELETE FROM
	[ByteTable]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column TinyInt -- Byte
SET     @Column = 1
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL

INSERT INTO [ByteTable]
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
DECLARE @Column TinyInt -- Byte
SET     @Column = 255
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = 2

INSERT INTO [ByteTable]
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
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[ByteTable]

BeforeExecute
-- SqlCe

INSERT INTO [ByteTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,1,NULL UNION ALL
SELECT 2,255,2

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DELETE FROM
	[ByteTable]

BeforeExecute
-- SqlCe

INSERT INTO [ByteTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
SELECT 1,1,NULL UNION ALL
SELECT 2,255,2

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column] as [Column_1],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

