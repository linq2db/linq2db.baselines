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

SELECT
	COUNT(CASE
		WHEN strftime('%Y-%m-%d %H:%M:%f', [g_1].[TimeStamp]) > strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')
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

