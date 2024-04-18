BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1

SELECT
	(
		SELECT
			"p"."ParentID"
		FROM
			"Child" "p"
		WHERE
			"p_1"."ParentID" = "p"."ParentID"
		FETCH NEXT @take ROWS ONLY
	)
FROM
	"Parent" "p_1"
WHERE
	(
		SELECT
			1
		FROM
			"Child" "t1"
		WHERE
			"p_1"."ParentID" = "t1"."ParentID"
		FETCH NEXT @take_1 ROWS ONLY
	) IS NOT NULL

