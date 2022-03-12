﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"key_data_result"."ParentID",
	"_y1"."ParentID",
	"_y1"."ChildID"
FROM
	(
		SELECT DISTINCT
			"x5"."ParentID",
			"x5"."Value1"
		FROM
			"Parent" "x5"
				LEFT JOIN "Child" "y2" ON "x5"."ParentID" = "y2"."ParentID" AND "x5"."Value1" = "y2"."ParentID"
		WHERE
			"x5"."ParentID" = 1 AND "x5"."Value1" IS NOT NULL
	) "key_data_result"
		INNER JOIN "Child" "_y1" ON "_y1"."ParentID" = "key_data_result"."ParentID" AND "_y1"."ParentID" = "key_data_result"."Value1"

BeforeExecute
RollbackTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x5"."ParentID",
	"x5"."Value1"
FROM
	"Parent" "x5"
		LEFT JOIN "Child" "y2" ON "x5"."ParentID" = "y2"."ParentID" AND "x5"."Value1" = "y2"."ParentID"
WHERE
	"x5"."ParentID" = 1 AND "x5"."Value1" IS NOT NULL
ORDER BY
	"x5"."ParentID"

