﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ChildID" IN (11, 21, 22, 31, 32, 33, 41, 42, 43, 44, 61, 62, 63, 64, 65, 66, 77) AND
			"p"."ParentID" = "c_1"."ParentID"
	)

