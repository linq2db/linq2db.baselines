﻿BeforeExecute
-- SapHana.Native SapHana

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "keyParam"
		WHERE
			"t1"."ParentID" = "keyParam"."ParentID" AND "keyParam"."ChildID" > 20
	)
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

