﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Child"."ParentID",
	"a_Child"."ChildID"
FROM
	"Parent" "p",
	"Parent" "c_1"
		INNER JOIN "GrandChild" "g_1" ON "p"."ParentID" = "g_1"."ParentID"
		LEFT JOIN "Child" "a_Child" ON "g_1"."ParentID" = "a_Child"."ParentID" AND "g_1"."ChildID" = "a_Child"."ChildID"
WHERE
	"p"."ParentID" = "g_1"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Child"."ParentID",
	"a_Child"."ChildID"
FROM
	"Parent" "p",
	"Parent" "c_1"
		INNER JOIN "GrandChild" "g_1" ON "p"."ParentID" = "g_1"."ParentID"
		LEFT JOIN "Child" "a_Child" ON "g_1"."ParentID" = "a_Child"."ParentID" AND "g_1"."ChildID" = "a_Child"."ChildID"
WHERE
	"p"."ParentID" = "g_1"."ParentID"

