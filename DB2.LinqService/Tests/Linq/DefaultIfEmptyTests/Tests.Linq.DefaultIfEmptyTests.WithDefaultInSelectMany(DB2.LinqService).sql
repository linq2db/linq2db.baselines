﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."ParentID",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "s"
		LEFT JOIN "Child" "c_1" ON "s"."ParentID" = "c_1"."ParentID"
WHERE
	"c_1"."ChildID" < 0 OR "c_1"."ParentID" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

