﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
WHERE
	(
		SELECT
			"r"."GuidValue"
		FROM
			"LinqDataTypes" "r"
		FETCH FIRST 1 ROWS ONLY
	) IS NOT NULL

