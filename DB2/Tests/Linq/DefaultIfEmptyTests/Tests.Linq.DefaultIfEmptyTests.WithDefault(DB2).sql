﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT
			1 as "c1"
		FROM SYSIBM.SYSDUMMY1
	) "t2"
		LEFT JOIN (
			SELECT
				"t1"."ParentID",
				"t1"."ChildID"
			FROM
				"Child" "t1"
			FETCH FIRST 0 ROWS ONLY
		) "d" ON 1=1

