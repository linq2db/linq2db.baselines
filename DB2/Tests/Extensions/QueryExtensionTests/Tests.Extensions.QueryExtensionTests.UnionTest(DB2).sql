BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."ParentID",
	"t"."ChildID"
FROM
	"Child" "t"
UNION
SELECT
	"t_1"."ParentID",
	"t_1"."ChildID"
FROM
	"Child" "t_1"
WHERE
	"t_1"."ChildID" < 10

