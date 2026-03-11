-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 7
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	(
		SELECT
			"t1"."ChildID",
			"t1"."ParentID"
		FROM
			"Child" "t1"
		ORDER BY
			"t1"."ChildID" DESC
		LIMIT ? OFFSET ?
	) "t2"
ORDER BY
	"t2"."ChildID"
LIMIT 4200000000 OFFSET ?

