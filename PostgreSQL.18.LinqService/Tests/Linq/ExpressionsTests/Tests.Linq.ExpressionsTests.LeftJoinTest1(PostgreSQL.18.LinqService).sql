﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."ParentID",
	t."ChildID",
	i."ParentID",
	i."Value1"
FROM
	"Child" t
		LEFT JOIN "Parent" i ON t."ParentID" = i."ParentID"

