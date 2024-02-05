BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."ParentID" + 1
FROM
	"Parent" "cp"
		INNER JOIN "Child" "_" ON "cp"."ParentID" = "_"."ParentID" + 1

