﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	SUM("t3"."PersonID")
FROM
	(
		SELECT
			"t1"."PersonID"
		FROM
			"Person" "t1"
		UNION ALL
		SELECT
			"t2"."ParentID" as "PersonID"
		FROM
			"Parent" "t2"
	) "t3"

