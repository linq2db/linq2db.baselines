﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	MIN("t2"."ParentID")
FROM
	(
		SELECT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
		ORDER BY
			"t1"."ParentID"
		FETCH FIRST 3 ROWS ONLY
	) "t2"

