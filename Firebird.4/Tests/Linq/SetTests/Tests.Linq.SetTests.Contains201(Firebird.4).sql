﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" - 1 = "c_1"."ParentID"
	)
FROM
	"Parent" "p"

