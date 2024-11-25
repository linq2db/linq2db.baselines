﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT DISTINCT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
WHERE
	NOT EXISTS(
		SELECT
			1
		FROM
			"Child" "p"
		WHERE
			"p"."ParentID" = 3 AND "t1"."ParentID" = "p"."ParentID" AND
			"t1"."ChildID" = "p"."ChildID"
	)

