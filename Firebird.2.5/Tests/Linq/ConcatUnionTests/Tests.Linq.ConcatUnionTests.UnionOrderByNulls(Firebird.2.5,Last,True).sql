-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT FIRST @take
	"t1"."ParentID",
	"t1"."Value1"
FROM
	(
		SELECT
			"p"."Value1",
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" < 5
		UNION
		SELECT
			"p_1"."Value1",
			"p_1"."ParentID"
		FROM
			"Parent" "p_1"
		WHERE
			"p_1"."ParentID" >= 3
	) "t1"
ORDER BY
	"t1"."Value1" DESC,
	"t1"."ParentID"

-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

