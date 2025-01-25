BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ValuesTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ValuesTable]
(
	[Id]         BigInt  NOT NULL,
	[SomeValue1] INTEGER NOT NULL,
	[SomeValue2] INTEGER NOT NULL,

	CONSTRAINT [PK_ValuesTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int64
SET     @Id = 1
DECLARE @SomeValue1  -- Int32
SET     @SomeValue1 = 2
DECLARE @SomeValue2  -- Int32
SET     @SomeValue2 = 2

INSERT INTO [ValuesTable]
(
	[Id],
	[SomeValue1],
	[SomeValue2]
)
VALUES
(
	@Id,
	@SomeValue1,
	@SomeValue2
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @SomeValue1  -- Int32
SET     @SomeValue1 = 8

UPDATE
	[ValuesTable]
SET
	[SomeValue1] = @SomeValue1,
	[SomeValue2] = 4

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 8

UPDATE
	[ValuesTable]
SET
	[SomeValue2] = @param

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ValuesTable]

