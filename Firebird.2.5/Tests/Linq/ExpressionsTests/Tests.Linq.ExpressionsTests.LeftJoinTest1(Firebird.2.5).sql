﻿BeforeExecute
--  Firebird.2.5 Firebird

SELECT
	"t"."ParentID",
	"t"."ChildID",
	"i"."ParentID",
	"i"."Value1"
FROM
	"Child" "t"
		LEFT JOIN "Parent" "i" ON "t"."ParentID" = "i"."ParentID"

