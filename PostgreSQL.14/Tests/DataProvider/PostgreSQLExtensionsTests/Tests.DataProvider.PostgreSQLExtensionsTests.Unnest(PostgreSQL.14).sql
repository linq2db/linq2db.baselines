﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	v
FROM
	"SampleClass" t1
		INNER JOIN LATERAL UNNEST(t1."StrArray") v ON 1=1
WHERE
	v LIKE 'V%' ESCAPE '~'

