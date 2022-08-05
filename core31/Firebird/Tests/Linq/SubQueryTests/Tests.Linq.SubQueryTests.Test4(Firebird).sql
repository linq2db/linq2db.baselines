﻿BeforeExecute
-- Firebird

SELECT
	(
		SELECT FIRST 1
			"ch"."ChildID"
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" = "p"."ParentID" AND "ch"."ChildID" = "ch"."ParentID" * 10 + 1
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" <> 5

