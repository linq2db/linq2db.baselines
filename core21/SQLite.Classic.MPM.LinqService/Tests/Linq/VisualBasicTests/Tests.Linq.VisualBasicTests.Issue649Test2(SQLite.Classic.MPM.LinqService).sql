BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [activity649]
(
	[activityid] INTEGER    NOT NULL PRIMARY KEY AUTOINCREMENT,
	[personid]   INTEGER    NOT NULL,
	[added]      DateTime2  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [person649]
(
	[personid]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[personname] NVarChar(255)  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @added  -- DateTime
SET     @added = '2017-01-01'

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	Max([p].[added])
FROM
	[activity649] [p]
		INNER JOIN [person649] [a_Person] ON [p].[personid] = [a_Person].[personid]
WHERE
	DateTime([p].[added]) >= DateTime(@added)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [person649]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [activity649]

