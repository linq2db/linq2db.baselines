BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%Persecution' ESCAPE '~'

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE '%persecution' ESCAPE '~'

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE '%Persecution' ESCAPE '~'

