﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ParentID",
	t."ChildID",
	gr."ParentID",
	gr."Value1"
FROM
	"Child" t
		LEFT JOIN "Parent" gr ON t."ParentID" = gr."ParentID"

