BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Struct],
	[t1].[Class]
FROM
	[Table] [t1]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[Table]
SET
	[Id] = 1,
	[Struct] = 1,
	[Class] = -8

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Struct],
	[t1].[Class]
FROM
	[Table] [t1]
LIMIT 2

