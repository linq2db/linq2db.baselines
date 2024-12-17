BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_in_1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [test_in_1]
(
	[ID] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(1),
(3),
(4),
(5),
(NULL)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [test_in_2]
(
	[ID] INTEGER     NULL
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
(4),
(6)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	 NOT EXISTS (
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
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

