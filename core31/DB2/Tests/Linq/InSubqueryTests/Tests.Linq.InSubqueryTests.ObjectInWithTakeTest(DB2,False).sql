BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"p"."ParentID",
					"p"."Value1" as "Value_1"
				FROM
					"Parent" "p"
				FETCH FIRST 100 ROWS ONLY
			) "t1"
		WHERE
			"t1"."ParentID" = "c_1"."ParentID" AND "t1"."Value_1" = "c_1"."ParentID"
	)

