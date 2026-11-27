-- PostgreSQL.15 PostgreSQL12
SELECT DISTINCT
	(
		SELECT
			cc."Name"
		FROM
			"LookupCity" cc
		WHERE
			cc."Code" = pe."Code" OR cc."Code" IS NULL AND pe."Code" IS NULL
		LIMIT 1
	)
FROM
	"LookupPerson" pe

