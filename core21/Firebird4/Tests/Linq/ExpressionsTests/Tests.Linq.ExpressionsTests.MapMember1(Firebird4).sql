﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" = "c_1"."ParentID" AND "c_1"."ChildID" > 0
	)
FROM
	"Parent" "p"

