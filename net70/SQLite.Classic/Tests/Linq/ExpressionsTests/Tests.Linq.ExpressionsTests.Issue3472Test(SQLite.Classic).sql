﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3472TableDC]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3472TableDC]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue3472TableDC]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	(
		SELECT
			Count(*)
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = [t1].[Id]
	)
FROM
	[Issue3472TableDC] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3472TableDC]

