﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "a_Parent" ON "ch"."ParentID" = "a_Parent"."ParentID"

