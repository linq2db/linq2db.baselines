﻿BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 3
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" >= 0 AND "ch"."ChildID" <= 100

