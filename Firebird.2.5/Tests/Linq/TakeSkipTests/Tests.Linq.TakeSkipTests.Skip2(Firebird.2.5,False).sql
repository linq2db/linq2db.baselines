﻿BeforeExecute
--  Firebird.2.5 Firebird

SELECT SKIP 3
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" > 3 OR "ch"."ChildID" < 4
ORDER BY
	"ch"."ParentID",
	"ch"."ChildID"

