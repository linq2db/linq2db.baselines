﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	CAST(CASE
		WHEN Mod("p"."ParentID", 2) = 0 THEN Mod("p"."ParentID", 3) = 0
		WHEN Mod("p"."ParentID", 4) = 0 THEN "p"."ParentID" > 0
		ELSE "p"."ParentID" < 5
	END AS smallint)
FROM
	"Parent" "p"

BeforeExecute
--  DB2 DB2.LUW DB2LUW

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
--  DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

