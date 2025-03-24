﻿BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	parent_1."ParentID",
	"childLeftJoin"."ChildID",
	"grandChildLeftJoin"."GrandChildID"
FROM
	"Parent" parent_1
		LEFT JOIN "GrandChild" "grandChildLeftJoin" ON parent_1."ParentID" = "grandChildLeftJoin"."ParentID"
		LEFT JOIN "Child" "childLeftJoin" ON parent_1."ParentID" = "childLeftJoin"."ParentID"

