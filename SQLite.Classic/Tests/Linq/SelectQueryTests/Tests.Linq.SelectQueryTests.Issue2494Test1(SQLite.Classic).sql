BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2494Table]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2494Table]
(
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Issue2494Table] [t1]
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Issue2494Table] [t1]
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2494Table]

