BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [activity649]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [activity649]
(
	[activityid] INTEGER    NOT NULL PRIMARY KEY AUTOINCREMENT,
	[personid]   INTEGER    NOT NULL,
	[added]      DateTime2  NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [person649]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [person649]
(
	[personid]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[personname] NVarChar(255)  NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @added  -- DateTime
SET     @added = '2017-01-01'

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	Max([f].[added])
FROM
	[activity649] [f]
		INNER JOIN [person649] [a_Person] ON [f].[personid] = [a_Person].[personid]
WHERE
	DateTime([f].[added]) >= DateTime(@added)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [person649]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [activity649]

