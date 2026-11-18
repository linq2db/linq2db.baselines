-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	? IN ("c_1"."ParentID", "c_1"."ChildID")

