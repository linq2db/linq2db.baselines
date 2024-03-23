BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConstructorTestTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ConstructorTestTable]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConstructorTestTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [ConstructorTestTable]
(
	[Id],
	[Value]
)
VALUES
(5,'Some')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ConstructorTestTable] [t1]
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConstructorTestTable]

