﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	"Parent" t2
		LEFT JOIN (
			SELECT
				r."GuidValue"
			FROM
				"LinqDataTypes" r
			FETCH NEXT 1 ROWS ONLY
		) t1 ON 1=1
WHERE
	t1."GuidValue" IS NOT NULL

