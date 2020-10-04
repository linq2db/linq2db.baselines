BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1

SELECT
	(
		SELECT FIRST @take
			"p"."ParentID"
		FROM
			"Child" "p"
		WHERE
			"p_1"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p_1"
WHERE
	(
		SELECT FIRST @take_1
			1
		FROM
			"Child" "t1"
		WHERE
			"p_1"."ParentID" = "t1"."ParentID"
	) IS NOT NULL

