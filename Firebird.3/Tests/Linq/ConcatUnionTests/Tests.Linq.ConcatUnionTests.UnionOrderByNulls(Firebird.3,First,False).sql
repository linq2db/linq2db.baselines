-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
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
	"t1"."Value1" NULLS FIRST,
	"t1"."ParentID"
FETCH NEXT @take ROWS ONLY

-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

