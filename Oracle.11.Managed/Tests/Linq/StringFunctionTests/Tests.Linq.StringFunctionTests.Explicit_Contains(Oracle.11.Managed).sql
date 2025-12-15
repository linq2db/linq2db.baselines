-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%Paranoid%' ESCAPE '~'

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%paranoid%' ESCAPE '~'

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE '%paranoid%' ESCAPE '~'

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE '%paranoid%' ESCAPE '~'

