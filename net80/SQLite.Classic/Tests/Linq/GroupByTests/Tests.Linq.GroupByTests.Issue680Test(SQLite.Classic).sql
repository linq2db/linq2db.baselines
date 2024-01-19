BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue680Table]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue680Table]
(
	[TimeStamp] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @DateTime  -- DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	Count(CASE
		WHEN DateTime([g_1].[TimeStamp]) > DateTime(@DateTime)
			THEN 1
		ELSE NULL
	END)
FROM
	[Issue680Table] [g_1]
GROUP BY
	[g_1].[TimeStamp]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue680Table]

