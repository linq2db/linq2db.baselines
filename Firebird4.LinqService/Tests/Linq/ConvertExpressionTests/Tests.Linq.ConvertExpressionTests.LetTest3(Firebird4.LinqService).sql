﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	(
		SELECT FIRST 1
			"t1"."ParentID"
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

