﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE 'Hall%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE 'hall%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Patient" r
WHERE
	r."Diagnosis" ILIKE 'Hall%' ESCAPE '~'

