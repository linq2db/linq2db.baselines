﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	"p"."ParentID",
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "ch" ON "p"."ParentID" = "ch"."ParentID"

