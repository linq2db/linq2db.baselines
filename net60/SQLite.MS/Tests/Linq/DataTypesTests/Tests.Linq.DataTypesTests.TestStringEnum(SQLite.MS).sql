BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [StringEnumTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [StringEnumTable]
(
	[ColumnNullable] NVarChar(8)     NULL,
	[Column]         NVarChar(8) NOT NULL,
	[Id]             INTEGER     NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [StringEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,'val=1',1),
('value=33','value=2',2)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = 'value=2' AND [r].[ColumnNullable] = 'value=33'

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[StringEnumTable]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL
DECLARE @Column_1 NVarChar(5) -- String
SET     @Column_1 = 'val=1'
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [StringEnumTable]
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
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'
DECLARE @Column_1 NVarChar(7) -- String
SET     @Column_1 = 'value=2'
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO [StringEnumTable]
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
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[StringEnumTable]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [StringEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,'val=1',1),
('value=33','value=2',2)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[StringEnumTable]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [StringEnumTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,'val=1',1),
('value=33','value=2',2)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [StringEnumTable]

