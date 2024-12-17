﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" + 1 = "c_1"."ParentID"
	)

