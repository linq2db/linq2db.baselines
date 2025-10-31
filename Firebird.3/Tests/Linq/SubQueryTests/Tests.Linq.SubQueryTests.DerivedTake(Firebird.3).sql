-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t2"."ParentID",
	"t2"."Value1"
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."Value1"
		FROM
			"Parent" "t1"
		FETCH NEXT @take ROWS ONLY
	) "t2"

-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

