﻿BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
WHERE
	(
		SELECT
			r."GuidValue"
		FROM
			"LinqDataTypes" r
		LIMIT 1
	) IS NOT NULL

