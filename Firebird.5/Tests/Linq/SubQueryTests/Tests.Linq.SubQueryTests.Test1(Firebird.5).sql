﻿BeforeExecute
--  Firebird.5 Firebird4

SELECT
	(
		SELECT
			MAX("ch"."ChildID")
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" <> 5

