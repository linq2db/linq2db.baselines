﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	t."ChildID",
	i."ParentID",
	i."Value1"
FROM
	"Child" t
		LEFT JOIN "Parent" i ON t."ParentID" = i."ParentID"

