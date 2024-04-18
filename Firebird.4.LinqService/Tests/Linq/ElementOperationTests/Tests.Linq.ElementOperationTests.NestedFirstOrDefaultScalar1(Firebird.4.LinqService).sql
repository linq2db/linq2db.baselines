BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."ChildID"
FROM
	"Parent" "p_1"
		LEFT JOIN LATERAL (
			SELECT
				"p"."ChildID"
			FROM
				"Child" "p"
			FETCH NEXT @take ROWS ONLY
		) "t1" ON 1=1

