BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT DISTINCT
	cc_1."Name"
FROM
	"Issue4160Person" t1
		LEFT JOIN LATERAL (
			SELECT
				cc."Name"
			FROM
				"Issue4160City" cc
			WHERE
				cc."Code" = t1."Code" OR cc."Code" IS NULL AND t1."Code" IS NULL
			LIMIT 1
		) cc_1 ON 1=1

