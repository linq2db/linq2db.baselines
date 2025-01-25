BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 10

SELECT
	"p_1"."ParentID",
	"t1"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 0
		FETCH NEXT @take ROWS ONLY
	) "p_1",
	(
		SELECT
			"c_1"."ChildID"
		FROM
			"Child" "c_1"
		FETCH NEXT @take_1 ROWS ONLY
	) "t1"

