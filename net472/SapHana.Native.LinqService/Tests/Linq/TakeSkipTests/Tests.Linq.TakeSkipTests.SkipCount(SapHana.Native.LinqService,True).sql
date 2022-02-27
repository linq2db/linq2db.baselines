BeforeExecute
-- SapHana.Native SapHana
DECLARE @skip  -- Int32
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
		LIMIT 4200000000 OFFSET :"skip"
	) "t2"

