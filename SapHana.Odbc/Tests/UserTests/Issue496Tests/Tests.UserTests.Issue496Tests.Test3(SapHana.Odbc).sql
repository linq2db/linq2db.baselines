BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"c_1"."ChildID",
	"c_1"."ParentID"
FROM
	"Parent" "_"
		INNER JOIN "Child" "c_1" ON Cast("_"."ParentID" as BigInt) = "c_1"."ParentID"
WHERE
	"_"."ParentID" = 1

