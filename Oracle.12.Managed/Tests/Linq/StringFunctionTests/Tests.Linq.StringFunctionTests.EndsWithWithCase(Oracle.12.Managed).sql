-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" p
WHERE
	p."Diagnosis" LIKE '%Persecution' ESCAPE '~' AND p."PersonID" = 2

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" p
WHERE
	p."Diagnosis" NOT LIKE '%Persecution' ESCAPE '~' AND
	p."PersonID" = 2

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" p
WHERE
	p."Diagnosis" LIKE '%persecution' ESCAPE '~' AND p."PersonID" = 2

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" p
WHERE
	p."Diagnosis" NOT LIKE '%persecution' ESCAPE '~' AND
	p."PersonID" = 2

