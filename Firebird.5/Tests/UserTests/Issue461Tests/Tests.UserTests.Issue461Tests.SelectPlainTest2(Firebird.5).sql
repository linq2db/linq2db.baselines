BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."ParentID",
	"t1"."ParentID",
	"t1"."c1"
FROM
	"Parent" "p"
		LEFT JOIN LATERAL (
			SELECT
				"c_1"."ParentID" + 1 as "c1",
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
			FETCH NEXT @take ROWS ONLY
		) "t1" ON 1=1

