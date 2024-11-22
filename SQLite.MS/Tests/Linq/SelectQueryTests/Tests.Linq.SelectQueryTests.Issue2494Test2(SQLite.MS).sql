BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2494Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue2494Table]
(
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [Issue2494Table]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2494Table]

