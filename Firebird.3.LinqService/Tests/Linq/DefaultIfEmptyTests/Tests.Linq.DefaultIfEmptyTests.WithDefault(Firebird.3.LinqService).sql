BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 0

SELECT
	"d"."cond",
	"d"."ChildID"
FROM
	(
		SELECT
			1 as "c1"
		FROM rdb$database
	) "t2"
		LEFT JOIN (
			SELECT
				"t1"."ParentID" as "cond",
				"t1"."ChildID"
			FROM
				"Child" "t1"
			FETCH NEXT @take ROWS ONLY
		) "d" ON 1=1

