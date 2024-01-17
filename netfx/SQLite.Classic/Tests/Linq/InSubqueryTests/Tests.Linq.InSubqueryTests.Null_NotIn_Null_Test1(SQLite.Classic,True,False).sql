BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_1]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [test_in_1]
(
	[ID] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [test_in_2]
(
	[ID] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_1]

