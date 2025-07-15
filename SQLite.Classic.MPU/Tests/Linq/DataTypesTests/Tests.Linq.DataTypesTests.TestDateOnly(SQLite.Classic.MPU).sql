BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Column VarChar(10) -- AnsiString
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable VarChar(10) -- AnsiString
SET     @ColumnNullable = '2200-01-01'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = '2020-02-29' AND [r].[ColumnNullable] = '2200-01-01'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[DateOnlyTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Column VarChar(10) -- AnsiString
SET     @Column = '1950-01-01'
DECLARE @ColumnNullable  -- Date
SET     @ColumnNullable = NULL

INSERT INTO [DateOnlyTable]
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Column VarChar(10) -- AnsiString
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable VarChar(10) -- AnsiString
SET     @ColumnNullable = '2200-01-01'

INSERT INTO [DateOnlyTable]
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[DateOnlyTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,'1950-01-01',NULL),
(2,'2020-02-29','2200-01-01')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[DateOnlyTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [DateOnlyTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(1,'1950-01-01',NULL),
(2,'2020-02-29','2200-01-01')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

