BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT
	"t1"."ParentID" + 1000,
	"t1"."Value1"
FROM
	(
		SELECT
			"c_1"."ParentID",
			Cast(Floor(Floor(Cast("c_1"."ChildID" as Double) / 10)) as Integer) as "Value1"
		FROM
			"Child" "c_1"
		UNION
		SELECT
			Coalesce("c_2"."ParentID", 0) as "ParentID",
			Floor(Cast(Coalesce("c_2"."GrandChildID", 0) as Double) / 100) as "Value1"
		FROM
			"GrandChild" "c_2"
	) "t1"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" > 1000

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

