BeforeExecute
-- Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	Count(*)
FROM
	(
		SELECT SKIP @skip
			"t1"."ChildID"
		FROM
			"Child" "t1"
	) "t2"

