﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%Paranoid%' ESCAPE '~'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	Lower(r."Diagnosis") LIKE '%paranoid%' ESCAPE '~'

