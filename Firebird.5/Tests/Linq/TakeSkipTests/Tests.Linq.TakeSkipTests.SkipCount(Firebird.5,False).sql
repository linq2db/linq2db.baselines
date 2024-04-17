BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."ChildID"
		FROM
			"Child" "t1"
		OFFSET 2 ROWS
	) "t2"

