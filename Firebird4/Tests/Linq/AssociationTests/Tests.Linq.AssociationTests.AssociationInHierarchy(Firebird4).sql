﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"o"."ParentID",
	"o"."Value1"
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "o" ON "ch"."ParentID" = "o"."ParentID" AND "ch"."ChildID" = 1

