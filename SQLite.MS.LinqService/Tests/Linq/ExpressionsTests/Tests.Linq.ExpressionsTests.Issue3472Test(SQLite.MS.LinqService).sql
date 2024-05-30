BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3472TableDCTX]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3472TableDCTX]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [Issue3472TableDCTX]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	(
		SELECT
			COUNT(*)
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = [t1].[Id]
	)
FROM
	[Issue3472TableDCTX] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3472TableDCTX]

