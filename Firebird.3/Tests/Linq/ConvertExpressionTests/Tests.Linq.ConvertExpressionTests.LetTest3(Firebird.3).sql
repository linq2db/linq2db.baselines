﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			"t1"."ParentID"
		FROM
			"Child" "t1"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" "p"

