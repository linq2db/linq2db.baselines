﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [activity649]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [activity649]
(
	[activityid] INTEGER    NOT NULL PRIMARY KEY AUTOINCREMENT,
	[personid]   INTEGER    NOT NULL,
	[added]      DateTime2  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [person649]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [person649]
(
	[personid]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[personname] NVarChar(255)  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([$VB$It].[added])
FROM
	[activity649] [$VB$It]
		INNER JOIN [person649] [a_Person] ON [$VB$It].[personid] = [a_Person].[personid]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [$VB$It].[added]) >= strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', '2017-01-01 00:00:00.000'))
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [person649]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [activity649]

