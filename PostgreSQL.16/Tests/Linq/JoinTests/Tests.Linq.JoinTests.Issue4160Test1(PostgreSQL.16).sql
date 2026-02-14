-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT DISTINCT
	(
		SELECT
			cc."Name" as "Value_1"
		FROM
			"Issue4160City" cc
		WHERE
			cc."Code" = pe."Code" OR cc."Code" IS NULL AND pe."Code" IS NULL
		LIMIT 1
	)
FROM
	"Issue4160Person" pe

