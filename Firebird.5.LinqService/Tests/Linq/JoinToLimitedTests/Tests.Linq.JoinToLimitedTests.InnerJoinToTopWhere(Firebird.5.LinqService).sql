BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"o"."ParentID",
	"o"."Value1",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "o"
		CROSS JOIN LATERAL (
			SELECT
				"x"."ParentID",
				"x"."ChildID"
			FROM
				"Child" "x"
			WHERE
				"x"."ParentID" = "o"."ParentID"
			FETCH NEXT @take ROWS ONLY
		) "t1"

