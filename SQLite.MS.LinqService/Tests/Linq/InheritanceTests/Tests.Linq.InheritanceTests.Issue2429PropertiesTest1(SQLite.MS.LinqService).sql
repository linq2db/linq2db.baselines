BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [BaseTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [BaseTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BaseValue  -- Int32
SET     @BaseValue = 100

INSERT INTO [BaseTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@BaseValue
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [BaseTable]

