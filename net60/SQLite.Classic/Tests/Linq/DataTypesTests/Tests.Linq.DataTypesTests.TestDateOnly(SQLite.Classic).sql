BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DateOnlyTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DateOnlyTable]
(
	[ColumnNullable] Date        NULL,
	[Column]         Date    NOT NULL,
	[Id]             INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,'1900-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Column_1 VarChar(10) -- AnsiString
SET     @Column_1 = '2020-02-29'
DECLARE @ColumnNullable VarChar(10) -- AnsiString
SET     @ColumnNullable = '2200-01-01'

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = @Column_1 AND [r].[ColumnNullable] = @ColumnNullable

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r].[ColumnNullable],
	[r].[Column],
	[r].[Id]
FROM
	[DateOnlyTable] [r]
WHERE
	[r].[Column] = '2020-02-29' AND [r].[ColumnNullable] = '2200-01-01'

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[DateOnlyTable]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ColumnNullable  -- Date
SET     @ColumnNullable = NULL
DECLARE @Column_1 VarChar(10) -- AnsiString
SET     @Column_1 = '1900-01-01'
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [DateOnlyTable]
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
-- SQLite.Classic SQLite
DECLARE @ColumnNullable VarChar(10) -- AnsiString
SET     @ColumnNullable = '2200-01-01'
DECLARE @Column_1 VarChar(10) -- AnsiString
SET     @Column_1 = '2020-02-29'
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO [DateOnlyTable]
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
-- SQLite.Classic SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[DateOnlyTable]

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,'1900-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[DateOnlyTable]

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [DateOnlyTable]
(
	[ColumnNullable],
	[Column],
	[Id]
)
VALUES
(NULL,'1900-01-01',1),
('2200-01-01','2020-02-29',2)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ColumnNullable],
	[t1].[Column],
	[t1].[Id]
FROM
	[DateOnlyTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DateOnlyTable]

