BeforeExecute
-- SqlCe

DROP TABLE [ByteTable]

BeforeExecute
-- SqlCe

CREATE TABLE [ByteTable]
(
	[Id]             Int     NOT NULL,
	[Column]         TinyInt NOT NULL,
	[ColumnNullable] TinyInt     NULL
)

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
DECLARE @Column_1 TinyInt -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable TinyInt -- Byte
SET     @ColumnNullable = 2

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Column],
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
DECLARE @Column_1 TinyInt -- Byte
SET     @Column_1 = 1
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column_1 TinyInt -- Byte
SET     @Column_1 = 255
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Column],
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
	[t1].[Column],
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
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [ByteTable]

