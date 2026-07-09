-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE 'Hall%' ESCAPE '~'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE 'hall%' ESCAPE '~'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE 'hall%' ESCAPE '~'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE 'Hall%' ESCAPE '~'

