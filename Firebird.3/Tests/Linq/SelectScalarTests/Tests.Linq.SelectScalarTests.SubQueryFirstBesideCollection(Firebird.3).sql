-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"
FETCH NEXT @take ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	(
		SELECT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
		ORDER BY
			"t1"."ParentID"
		FETCH NEXT 1 ROWS ONLY
	)
FROM rdb$database

