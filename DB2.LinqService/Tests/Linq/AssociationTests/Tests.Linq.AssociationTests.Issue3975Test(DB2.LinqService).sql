BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"lw_Issue3975TestClass"."ParentID",
	"detail"."ParentID",
	"detail"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t2"."ParentID"
		FROM
			(
				SELECT
					"t1"."ParentID"
				FROM
					"Parent" "t1"
				FETCH FIRST 1 ROWS ONLY
			) "t2"
	) "lw_Issue3975TestClass"
		INNER JOIN "Child" "detail" ON "lw_Issue3975TestClass"."ParentID" = "detail"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID"
FROM
	"Parent" "t1"
FETCH FIRST 1 ROWS ONLY

