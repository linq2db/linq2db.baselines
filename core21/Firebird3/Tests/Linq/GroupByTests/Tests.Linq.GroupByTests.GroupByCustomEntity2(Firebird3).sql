BeforeExecute
-- Firebird3 Firebird
DECLARE @RandValue Integer -- Int32
SET     @RandValue = 4

SELECT
	Count(*)
FROM
	(
		SELECT
			"c_1"."ParentID",
			Cast(@RandValue as Int) as "RandValue"
		FROM
			"Child" "c_1"
	) "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."RandValue"

