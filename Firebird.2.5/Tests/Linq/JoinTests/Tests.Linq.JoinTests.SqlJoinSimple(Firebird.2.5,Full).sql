﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."ParentID",
	"r"."ChildID"
FROM
	"Parent" "p"
		FULL JOIN "Child" "r" ON "p"."ParentID" = "r"."ParentID"

