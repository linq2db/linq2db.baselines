﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "ch_1"
		WHERE
			"p"."ParentID" = "ch_1"."ParentID"
	),
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		CROSS JOIN LATERAL (
			SELECT
				"ch"."ParentID",
				"ch"."ChildID"
			FROM
				"Child" "ch"
			WHERE
				"p"."ParentID" = "ch"."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) "t1"
WHERE
	"p"."ParentID" = 1

