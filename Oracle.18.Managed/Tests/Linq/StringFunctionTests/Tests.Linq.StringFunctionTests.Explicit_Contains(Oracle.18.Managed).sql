-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%Paranoid%' ESCAPE '~'

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%paranoid%' ESCAPE '~'

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE '%paranoid%' ESCAPE '~'

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE '%paranoid%' ESCAPE '~'

