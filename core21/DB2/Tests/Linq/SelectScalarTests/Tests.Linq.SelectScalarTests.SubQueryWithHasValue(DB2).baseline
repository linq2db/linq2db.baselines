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
			"r"."Value1"
		FROM
			"Parent" "r"
		FETCH FIRST 1 ROWS ONLY
	) IS NOT NULL

