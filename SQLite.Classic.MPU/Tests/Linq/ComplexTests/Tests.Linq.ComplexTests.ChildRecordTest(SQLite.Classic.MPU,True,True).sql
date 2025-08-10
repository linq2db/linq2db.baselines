BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Table]
(
	[Id],
	[Struct],
	[Class]
)
VALUES
(
	1,
	13,
	8
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Struct],
	[t1].[Class]
FROM
	[Table] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[Table]
SET
	[Id] = 1,
	[Struct] = 1,
	[Class] = -8

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Struct],
	[t1].[Class]
FROM
	[Table] [t1]
LIMIT 2

