﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"c_1"."ParentID"
FROM
	"Parent" "c_1"
UNION ALL
SELECT
	"c_2"."ParentID",
	"c_2"."ChildID"
FROM
	"Child" "c_2"

