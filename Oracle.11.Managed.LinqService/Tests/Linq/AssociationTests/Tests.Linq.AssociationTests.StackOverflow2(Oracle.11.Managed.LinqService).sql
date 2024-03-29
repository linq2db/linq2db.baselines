﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	(
		SELECT
			Count(*)
		FROM
			"Parent" t1
		WHERE
			p."ParentID" = t1."Value1"
	) <> 0

