﻿BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"Parent" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
				LEFT JOIN "Child" "ch" ON "p"."ParentID" = "ch"."ParentID"
		WHERE
			"ch"."ParentID" = -1 AND "t1"."ParentID" = "p"."ParentID" AND
			"t1"."Value1" = "p"."Value1"
	)

