BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table1788]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table1788]
(
	[Id]     INTEGER NOT NULL,
	[Value1] INTEGER NOT NULL,

	CONSTRAINT [PK_Table1788] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Table1788]
(
	[Id],
	[Value1]
)
VALUES
(1,11),
(2,22),
(3,33)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value1]
FROM
	[Table1788] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[l].[Id],
	[l].[Value1]
FROM
	[Table1788] [p]
		LEFT JOIN [Table1788] [l] ON [l].[Id] = [p].[Id] + 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table1788]

