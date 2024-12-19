BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue680Table"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue680Table"
(
	"TimeStamp" TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(CASE
		WHEN g_1."TimeStamp" > '2020-02-29 17:54:55.123'::timestamp
			THEN 1
		ELSE NULL
	END)
FROM
	"Issue680Table" g_1
GROUP BY
	g_1."TimeStamp"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue680Table"

