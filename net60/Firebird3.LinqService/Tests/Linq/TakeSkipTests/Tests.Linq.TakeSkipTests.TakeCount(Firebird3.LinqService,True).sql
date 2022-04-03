BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT FIRST @take
			"t1"."ParentID",
			"t1"."ChildID"
		FROM
			"Child" "t1"
	) "t2"

