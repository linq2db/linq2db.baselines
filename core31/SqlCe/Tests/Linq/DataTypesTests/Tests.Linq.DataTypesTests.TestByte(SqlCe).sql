BeforeExecute
-- SqlCe

DROP TABLE [ByteTable]

BeforeExecute
-- SqlCe

CREATE TABLE [ByteTable]
(
	[ColumnNullable] TinyInt     NULL,
	[Column]         TinyInt NOT NULL,
	[Id]             Int     NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 2,255,2

BeforeExecute
-- SqlCe
DECLARE @Column_1 TinyInt -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = 2

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlCe

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
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
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1 TinyInt -- Byte
SET     @Column_1 = 1
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [ByteTable]
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
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1 TinyInt -- Byte
SET     @Column_1 = 255
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [ByteTable]
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
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 2,255,2

BeforeExecute
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
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
	[ColumnNullable],
	[Column],
	[Id]
)
SELECT NULL,1,1 UNION ALL
SELECT 2,255,2

BeforeExecute
-- SqlCe

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [ByteTable]

