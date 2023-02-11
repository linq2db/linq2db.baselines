BeforeExecute
-- Access AccessOleDb

DROP TABLE [ByteTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [ByteTable]
(
	[Id]             Int     NOT NULL,
	[Column]         TinyInt NOT NULL,
	[ColumnNullable] TinyInt     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 UnsignedTinyInt(1) -- Byte
SET     @Column_1 = 1
DECLARE @ColumnNullable UnsignedTinyInt -- Byte
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 UnsignedTinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
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
-- Access AccessOleDb
DECLARE @Column_1 UnsignedTinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
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
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = 255 AND [r].[ColumnNullable] = 2

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[ByteTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 UnsignedTinyInt(1) -- Byte
SET     @Column_1 = 1
DECLARE @ColumnNullable UnsignedTinyInt -- Byte
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 UnsignedTinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
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
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[ByteTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 UnsignedTinyInt(1) -- Byte
SET     @Column_1 = 1
DECLARE @ColumnNullable UnsignedTinyInt -- Byte
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 UnsignedTinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
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
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[ByteTable] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 UnsignedTinyInt(1) -- Byte
SET     @Column_1 = 1
DECLARE @ColumnNullable UnsignedTinyInt -- Byte
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
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 UnsignedTinyInt(1) -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable UnsignedTinyInt(1) -- Byte
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
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [ByteTable]

