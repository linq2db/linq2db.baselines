﻿BeforeExecute
--  Firebird.3 Firebird3

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p"

