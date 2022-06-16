BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [BaseTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [BaseTable]
(
	[Value] INTEGER NOT NULL,
	[Id]    INTEGER NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @BaseValue  -- Int32
SET     @BaseValue = 100
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [BaseTable]
(
	[Value],
	[Id]
)
VALUES
(
	@BaseValue,
	@Id
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [BaseTable]

