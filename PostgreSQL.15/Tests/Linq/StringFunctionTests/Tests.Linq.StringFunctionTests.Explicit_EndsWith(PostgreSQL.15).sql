﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%Persecution' ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE '%persecution' ESCAPE '~'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE '%Persecution' ESCAPE '~'

