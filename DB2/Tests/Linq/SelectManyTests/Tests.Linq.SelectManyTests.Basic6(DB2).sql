BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."ParentID" + 1
FROM
	"Parent" "cp"
		INNER JOIN "Child" "_" ON "_"."ParentID" > 0 AND "cp"."ParentID" = "_"."ParentID"

