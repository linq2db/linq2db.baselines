BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ValuesTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ValuesTable]
(
	[Id]         BigInt  NOT NULL,
	[SomeValue1] INTEGER NOT NULL,
	[SomeValue2] INTEGER NOT NULL,

	CONSTRAINT [PK_ValuesTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @param  -- Int32
SET     @param = 2

INSERT INTO [ValuesTable]
(
	[Id],
	[SomeValue1],
	[SomeValue2]
)
VALUES
(
	1,
	2,
	@param
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[SomeValue1],
	[t1].[SomeValue2]
FROM
	[ValuesTable] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ValuesTable]

