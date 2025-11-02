-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE 'Hall%' ESCAPE '~'

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE 'hall%' ESCAPE '~'

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE 'hall%' ESCAPE '~'

-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE 'hall%' ESCAPE '~'

