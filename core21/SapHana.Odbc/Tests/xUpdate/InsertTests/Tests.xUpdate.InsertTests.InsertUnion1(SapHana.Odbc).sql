BeforeExecute
-- SQLite.Default SQLite.MS SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

