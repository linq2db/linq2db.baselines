BeforeExecute
-- Firebird
DECLARE @rand Integer -- Int32
SET     @rand = 3

SELECT
	Count(*)
FROM
	(
		SELECT
			"c_1"."ParentID",
			Cast(@rand as Int) as "RandValue"
		FROM
			"Child" "c_1"
	) "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."RandValue"

