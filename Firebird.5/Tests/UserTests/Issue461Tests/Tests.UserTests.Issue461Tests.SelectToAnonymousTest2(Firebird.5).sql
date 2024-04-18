BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Child"
FROM
	"Parent" "sep"
		LEFT JOIN LATERAL (
			SELECT
				"l"."ParentID" as "Child"
			FROM
				"Child" "l"
			FETCH NEXT @take ROWS ONLY
		) "t1" ON 1=1

