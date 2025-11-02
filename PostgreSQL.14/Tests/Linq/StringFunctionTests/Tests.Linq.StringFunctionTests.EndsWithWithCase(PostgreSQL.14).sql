-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" p
WHERE
	p."Diagnosis" LIKE '%Persecution' ESCAPE '~' AND p."PersonID" = 2

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" p
WHERE
	p."Diagnosis" NOT LIKE '%Persecution' ESCAPE '~' AND
	p."PersonID" = 2

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" p
WHERE
	p."Diagnosis" LIKE '%persecution' ESCAPE '~' AND p."PersonID" = 2

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Patient" p
WHERE
	p."Diagnosis" NOT LIKE '%persecution' ESCAPE '~' AND
	p."PersonID" = 2

