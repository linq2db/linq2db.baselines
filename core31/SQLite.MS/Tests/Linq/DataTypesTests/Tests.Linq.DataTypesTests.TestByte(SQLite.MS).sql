BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ByteTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ByteTable]
(
	[ColumnNullable] TinyInt     NULL,
	[Column]         TinyInt NOT NULL,
	[Id]             INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,1,1),
(2,255,2)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Column_1  -- Byte
SET     @Column_1 = 255
DECLARE @ColumnNullable  -- Byte
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
-- SQLite.MS SQLite

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[ByteTable] [r]
WHERE
	[r].[Column] = 255 AND [r].[ColumnNullable] = 2

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[ByteTable]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = NULL
DECLARE @Column_1  -- Byte
SET     @Column_1 = 1
DECLARE @Id  -- Int32
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
-- SQLite.MS SQLite
DECLARE @ColumnNullable  -- Byte
SET     @ColumnNullable = 2
DECLARE @Column_1  -- Byte
SET     @Column_1 = 255
DECLARE @Id  -- Int32
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
-- SQLite.MS SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[ByteTable]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,1,1),
(2,255,2)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[ByteTable]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [ByteTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,1,1),
(2,255,2)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[ByteTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ByteTable]

