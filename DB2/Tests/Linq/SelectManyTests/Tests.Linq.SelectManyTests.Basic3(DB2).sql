BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."ParentID" + 1
FROM
	"Parent" "cp",
	"Child" "_"
WHERE
	"_"."ParentID" > 0

