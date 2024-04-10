BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."ParentID",
	"_"."Value1"
FROM
	"Parent" "_"
WHERE
	(
		SELECT
			CASE
				WHEN "r"."GuidValue" IS NOT NULL THEN 1
				ELSE 0
			END
		FROM
			"LinqDataTypes" "r"
		FETCH FIRST 1 ROWS ONLY
	) = 1

