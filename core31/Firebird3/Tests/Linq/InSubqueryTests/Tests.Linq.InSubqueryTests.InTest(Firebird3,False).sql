﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" IN (
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
	)

