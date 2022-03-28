BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [IntEnumTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [IntEnumTable]
(
	[ColumnNullable] INTEGER     NULL,
	[Column]         INTEGER NOT NULL,
	[Id]             INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,1,1),
(3,2,2)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Column_1 NVarChar -- String
SET     @Column_1 = 2
DECLARE @ColumnNullable NVarChar -- String
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
-- SQLite.MS SQLite

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[IntEnumTable] [r]
WHERE
	[r].[Column] = 2 AND [r].[ColumnNullable] = 3

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[IntEnumTable]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = NULL
DECLARE @Column_1  -- Int32
SET     @Column_1 = 1
DECLARE @Id  -- Int32
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
-- SQLite.MS SQLite
DECLARE @ColumnNullable  -- Int32
SET     @ColumnNullable = 3
DECLARE @Column_1  -- Int32
SET     @Column_1 = 2
DECLARE @Id  -- Int32
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
-- SQLite.MS SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[IntEnumTable]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,1,1),
(3,2,2)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[IntEnumTable]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [IntEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,1,1),
(3,2,2)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[IntEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [IntEnumTable]

