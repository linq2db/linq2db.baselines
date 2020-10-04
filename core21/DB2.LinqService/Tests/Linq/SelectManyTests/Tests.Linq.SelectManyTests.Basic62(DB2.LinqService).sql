BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."ParentID" + "cp"."ParentID"
FROM
	"Parent" "cp"
		CROSS JOIN "Child" "_"
WHERE
	"_"."ParentID" + "cp"."ParentID" > 1 AND "cp"."ParentID" = "_"."ParentID"

