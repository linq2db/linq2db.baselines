﻿BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Parent" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" + 100 = "c_1"."ParentID"
	)

