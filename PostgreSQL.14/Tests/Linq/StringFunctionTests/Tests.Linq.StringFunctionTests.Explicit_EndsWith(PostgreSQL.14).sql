-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%Persecution' ESCAPE '~'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%persecution' ESCAPE '~'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE '%persecution' ESCAPE '~'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE '%Persecution' ESCAPE '~'

