﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	STRING_AGG(t1."Value4", ' -> ')
FROM
	"SampleClass" t1

