BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	Min("t1"."ParentID")
FROM
	(
		SELECT FIRST @take
			"p"."ParentID"
		FROM
			"Parent" "p"
		ORDER BY
			"p"."Value1"
	) "t1"

