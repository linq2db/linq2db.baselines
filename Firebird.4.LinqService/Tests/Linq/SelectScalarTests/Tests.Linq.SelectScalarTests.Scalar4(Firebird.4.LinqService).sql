﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"
WHERE
	"c_1"."ChildID" > 20 AND "p"."ParentID" = 3
FETCH NEXT 1 ROWS ONLY

