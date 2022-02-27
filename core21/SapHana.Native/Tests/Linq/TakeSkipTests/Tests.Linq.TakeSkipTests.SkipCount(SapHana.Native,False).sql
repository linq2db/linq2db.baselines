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
		LIMIT 4200000000 OFFSET 2
	) "t2"

