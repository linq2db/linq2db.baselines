-- PostgreSQL.18 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%Paranoid%' ESCAPE '~'

-- PostgreSQL.18 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%paranoid%' ESCAPE '~'

-- PostgreSQL.18 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE '%paranoid%' ESCAPE '~'

-- PostgreSQL.18 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE '%Paranoid%' ESCAPE '~'

