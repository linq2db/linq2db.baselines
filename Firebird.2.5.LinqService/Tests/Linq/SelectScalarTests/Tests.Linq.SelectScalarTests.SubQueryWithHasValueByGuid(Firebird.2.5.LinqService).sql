BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
WHERE
	(
		SELECT FIRST 1
			"r"."GuidValue"
		FROM
			"LinqDataTypes" "r"
	) IS NOT NULL

