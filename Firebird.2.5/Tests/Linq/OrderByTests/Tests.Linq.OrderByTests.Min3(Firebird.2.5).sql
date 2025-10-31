-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	MIN("t2"."ParentID")
FROM
	(
		SELECT FIRST @take
			"t1"."ParentID"
		FROM
			"Parent" "t1"
		ORDER BY
			"t1"."Value1"
	) "t2"

