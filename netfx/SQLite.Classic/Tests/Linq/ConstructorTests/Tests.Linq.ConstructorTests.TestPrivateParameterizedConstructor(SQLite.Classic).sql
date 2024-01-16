BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConstructorTestTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ConstructorTestTable]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConstructorTestTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [ConstructorTestTable]
(
	[Id],
	[Value]
)
VALUES
(5,'Some')

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ConstructorTestTable] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ConstructorTestTable]

