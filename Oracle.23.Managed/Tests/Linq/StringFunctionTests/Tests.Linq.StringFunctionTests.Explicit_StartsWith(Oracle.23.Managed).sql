-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE 'Hall%' ESCAPE '~'

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE 'hall%' ESCAPE '~'

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE 'hall%' ESCAPE '~'

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE 'hall%' ESCAPE '~'

