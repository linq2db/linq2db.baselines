﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	STRING_AGG(t."Value4", ' -> ')
FROM
	"SampleClass" t

