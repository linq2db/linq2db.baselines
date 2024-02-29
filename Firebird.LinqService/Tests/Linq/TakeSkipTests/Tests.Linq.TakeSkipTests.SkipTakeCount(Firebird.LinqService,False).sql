BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	(
		SELECT FIRST 5 SKIP 2
			"t1"."ParentID",
			"t1"."ChildID"
		FROM
			"Child" "t1"
	) "t2"

