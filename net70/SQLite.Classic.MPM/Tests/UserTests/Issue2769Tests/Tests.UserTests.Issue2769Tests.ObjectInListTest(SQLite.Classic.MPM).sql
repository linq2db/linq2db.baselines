BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]        INTEGER NOT NULL,
	[NullValue] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @_default  -- Int32
SET     @_default = 0

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND Coalesce([a].[NullValue], @_default) = 0 OR [a].[Id] = 1 AND Coalesce([a].[NullValue], @_default) = 1 OR [a].[Id] = 2 AND Coalesce([a].[NullValue], @_default) = 2)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

