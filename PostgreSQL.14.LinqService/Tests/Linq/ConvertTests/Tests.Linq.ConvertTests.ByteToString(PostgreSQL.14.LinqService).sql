﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ID"
FROM
	"LinqDataTypes" p
WHERE
	LENGTH(p."ID"::SmallInt::text) > 0

