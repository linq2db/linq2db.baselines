BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t2"."ParentID",
	"t2"."Value1"
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."Value1",
			(
				SELECT
					"r"."Value1"
				FROM
					"Parent" "r"
				FETCH NEXT 1 ROWS ONLY
			) as "Value1_1"
		FROM
			"Parent" "t1"
	) "t2"
WHERE
	"t2"."Value1_1" IS NOT NULL

