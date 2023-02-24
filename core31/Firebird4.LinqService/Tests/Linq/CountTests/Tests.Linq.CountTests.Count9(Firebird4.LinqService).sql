﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"a_Parent"."ParentID"
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "a_Parent" ON "ch"."ParentID" = "a_Parent"."ParentID"

BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Child" "p"
		LEFT JOIN "Parent" "a_Parent" ON "p"."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."ParentID" = 1

