BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TestTable]
(
	[Id] INTEGER NOT NULL,
	[F]  VarChar NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @F NVarChar(2) -- String
SET     @F = '{}'

INSERT INTO [TestTable]
(
	[Id],
	[F]
)
VALUES
(
	2,
	@F
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestTable]

