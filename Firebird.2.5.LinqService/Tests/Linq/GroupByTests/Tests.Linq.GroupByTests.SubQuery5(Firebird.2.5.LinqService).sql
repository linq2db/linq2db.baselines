﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Sum("ch"."ParentID")
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "pg" ON "ch"."ParentID" = "pg"."ParentID"
GROUP BY
	"ch"."ChildID"

