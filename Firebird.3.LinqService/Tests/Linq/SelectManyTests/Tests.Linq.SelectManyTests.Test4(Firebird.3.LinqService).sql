﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
		INNER JOIN "GrandChild" "g_1" ON "t1"."ParentID" = "g_1"."ParentID" AND "g_1"."ParentID" IS NOT NULL
		INNER JOIN "Child" "c_1" ON "g_1"."ChildID" = "c_1"."ChildID"
		INNER JOIN "LinqDataTypes" "t" ON "c_1"."ParentID" = "t".ID

