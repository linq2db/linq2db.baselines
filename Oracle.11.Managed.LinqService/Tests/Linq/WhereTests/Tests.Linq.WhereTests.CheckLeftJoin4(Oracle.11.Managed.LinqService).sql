﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		LEFT JOIN "Child" ch ON p."ParentID" = ch."ParentID" AND ch."ParentID" > 0
WHERE
	ch."ParentID" IS NULL

