BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [BaseTable]
(
	[Value] INTEGER NOT NULL,
	[Id]    INTEGER NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [BaseTable]
(
	[Value],
	[Id]
)
VALUES
(100,1)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [BaseTable]

