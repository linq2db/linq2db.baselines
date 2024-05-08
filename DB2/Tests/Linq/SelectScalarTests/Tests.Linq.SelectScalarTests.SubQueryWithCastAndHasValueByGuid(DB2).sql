BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
WHERE
	(
		SELECT
			CASE
				WHEN "r"."GuidValue" IS NOT NULL THEN 1
				ELSE 0
			END
		FROM
			"LinqDataTypes" "r"
		FETCH NEXT 1 ROWS ONLY
	) = 1

