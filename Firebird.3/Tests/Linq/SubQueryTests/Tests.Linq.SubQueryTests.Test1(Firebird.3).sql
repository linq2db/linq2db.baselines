﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			Max("ch"."ChildID")
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" <> 5

