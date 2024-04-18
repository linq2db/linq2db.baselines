BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."ParentID"
FROM
	"Parent" "p"
		LEFT JOIN LATERAL (
			SELECT DISTINCT
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
			WHERE
				"p"."ParentID" = "c_1"."ParentID"
			FETCH NEXT @take ROWS ONLY
		) "t1" ON 1=1

