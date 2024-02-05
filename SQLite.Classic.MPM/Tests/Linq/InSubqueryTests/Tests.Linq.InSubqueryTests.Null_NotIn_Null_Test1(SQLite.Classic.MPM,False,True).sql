BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [test_in_1]
(
	[ID] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [test_in_2]
(
	[ID] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(1),
(2),
(4),
(6),
(NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	CASE
		WHEN [t].[ID] IS NULL AND 1 IN (
			SELECT
				1
			FROM
				[test_in_2] [p]
			WHERE
				[p].[ID] IS NULL
		) OR [t].[ID] IS NOT NULL AND [t].[ID] IN (
			SELECT
				[p].[ID]
			FROM
				[test_in_2] [p]
		)
			THEN 1
		ELSE 0
	END = 0

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_1]

