BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [activity649]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [activity649]
(
	[activityid] INTEGER    NOT NULL PRIMARY KEY AUTOINCREMENT,
	[personid]   INTEGER    NOT NULL,
	[added]      DateTime2  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [person649]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [person649]
(
	[personid]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[personname] NVarChar(255)  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	Max([$VB$It].[added])
FROM
	[activity649] [$VB$It]
		INNER JOIN [person649] [a_Person] ON [$VB$It].[personid] = [a_Person].[personid]
WHERE
	DateTime([$VB$It].[added]) >= DateTime(Date('2017-01-01'))
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [person649]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [activity649]

