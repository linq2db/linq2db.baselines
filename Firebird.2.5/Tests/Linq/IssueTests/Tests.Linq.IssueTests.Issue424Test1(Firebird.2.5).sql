-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t2"."ParentID",
	"t2"."Value1"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID",
			"t1"."Value1"
		FROM
			"Parent" "t1"
	) "t2"
ORDER BY
	"t2"."ParentID"

-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

