﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
		FETCH NEXT 1 ROWS ONLY
	) IS NOT NULL

