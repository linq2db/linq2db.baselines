﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "t1" ON 1=1
WHERE
	"p"."ParentID" = "t1"."ParentID"

