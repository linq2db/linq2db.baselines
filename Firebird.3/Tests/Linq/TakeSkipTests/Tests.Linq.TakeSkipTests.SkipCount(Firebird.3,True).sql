BeforeExecute
-- Firebird.3 Firebird3
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	Count(*)
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."ChildID"
		FROM
			"Child" "t1"
		OFFSET @skip ROWS
	) "t2"

