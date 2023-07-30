BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE 'Hall%' ESCAPE '~'

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE 'hall%' ESCAPE '~'

