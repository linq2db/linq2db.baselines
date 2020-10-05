BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."ChildID"
		FROM
			"Child" "t1"
		LIMIT 5 OFFSET 2
	) "t2"

