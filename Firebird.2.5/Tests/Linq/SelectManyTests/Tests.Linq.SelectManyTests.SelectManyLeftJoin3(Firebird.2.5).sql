﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "p",
	"Child" "ch"
WHERE
	"p"."ParentID" = "ch"."ParentID"

