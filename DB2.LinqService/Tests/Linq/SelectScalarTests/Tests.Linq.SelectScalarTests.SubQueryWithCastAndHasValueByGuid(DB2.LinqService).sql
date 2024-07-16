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
					"r"."GuidValue"
				FROM
					"LinqDataTypes" "r"
				FETCH NEXT 1 ROWS ONLY
			) as "GuidValue"
		FROM
			"Parent" "t1"
	) "t2"
WHERE
	"t2"."GuidValue" IS NOT NULL

