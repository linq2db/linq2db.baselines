BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."ChildID"
		FROM
			"Child" "t1"
		FETCH NEXT 5 ROWS ONLY
	) "t2"

