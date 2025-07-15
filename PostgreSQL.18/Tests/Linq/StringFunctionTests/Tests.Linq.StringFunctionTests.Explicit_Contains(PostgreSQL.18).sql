BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%Paranoid%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE '%Paranoid%' ESCAPE '~'

