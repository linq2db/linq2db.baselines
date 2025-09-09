BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT DISTINCT
	(
		SELECT
			cc."Name"
		FROM
			"Issue4160City" cc
		WHERE
			cc."Code" = pe."Code" OR cc."Code" IS NULL AND pe."Code" IS NULL
		LIMIT 1
	)
FROM
	"Issue4160Person" pe

