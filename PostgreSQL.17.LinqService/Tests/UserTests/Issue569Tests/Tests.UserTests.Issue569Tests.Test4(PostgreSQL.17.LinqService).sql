﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent" parent_1
		CROSS JOIN "Parent" s
		CROSS JOIN "Child" child_1
		LEFT JOIN "GrandChild" "grandChild_1" ON child_1."ParentID" = "grandChild_1"."ParentID" AND child_1."ChildID" = "grandChild_1"."ChildID"

