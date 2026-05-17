-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" < 4
ORDER BY
	"c_1"."ChildID"

-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" < 4

