BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%Persecution' ESCAPE '~'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE '%persecution' ESCAPE '~'

