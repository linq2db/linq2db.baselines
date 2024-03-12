BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_in_1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [test_in_1]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(1),
(2),
(4)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [test_in_2]
(
	[ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(1),
(2),
(3)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_in_1]

