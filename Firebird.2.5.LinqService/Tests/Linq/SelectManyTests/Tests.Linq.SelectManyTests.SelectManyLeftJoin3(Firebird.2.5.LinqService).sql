﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "ch" ON 1=1
WHERE
	"p"."ParentID" = "ch"."ParentID"

