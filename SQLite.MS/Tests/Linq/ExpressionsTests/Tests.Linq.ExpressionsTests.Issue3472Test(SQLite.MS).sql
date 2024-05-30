BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3472TableDC]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3472TableDC]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue3472TableDC]
(
	[Id]
)
VALUES
(1)

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
	[Issue3472TableDC] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3472TableDC]

