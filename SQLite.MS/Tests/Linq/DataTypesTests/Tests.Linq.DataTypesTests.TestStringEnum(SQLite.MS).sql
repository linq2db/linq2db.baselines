-- SQLite.MS SQLite
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[StringEnumTable] [r]
WHERE
	[r].[Column] = 'value=2' AND [r].[ColumnNullable] = 'value=33'

-- SQLite.MS SQLite

DELETE FROM
	[StringEnumTable]

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column NVarChar(5) -- String
SET     @Column = 'val=1'
DECLARE @ColumnNullable NVarChar -- String
SET     @ColumnNullable = NULL

INSERT INTO [StringEnumTable]
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

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column NVarChar(7) -- String
SET     @Column = 'value=2'
DECLARE @ColumnNullable NVarChar(8) -- String
SET     @ColumnNullable = 'value=33'

INSERT INTO [StringEnumTable]
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

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

DELETE FROM
	[StringEnumTable]

-- SQLite.MS SQLite

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

DELETE FROM
	[StringEnumTable]

-- SQLite.MS SQLite

INSERT INTO [StringEnumTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,'val=1',NULL),
(2,'value=2','value=33')

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[StringEnumTable] [t1]
ORDER BY
	[t1].[Id]

