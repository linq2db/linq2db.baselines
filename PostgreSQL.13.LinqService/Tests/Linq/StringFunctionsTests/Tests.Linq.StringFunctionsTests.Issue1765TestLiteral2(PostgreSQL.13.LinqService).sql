﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	STRING_AGG(t1."Value4", ' -> ')
FROM
	"SampleClass" t1

