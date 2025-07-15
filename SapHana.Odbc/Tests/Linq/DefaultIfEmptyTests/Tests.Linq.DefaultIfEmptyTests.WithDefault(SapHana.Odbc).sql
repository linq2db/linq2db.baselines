BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 0

SELECT
	"d"."cond",
	"d"."ChildID"
FROM
	(
		SELECT
			1 as "c1"
FROM DUMMY
	) "t2"
		LEFT JOIN (
			SELECT
				"t1"."ParentID" as "cond",
				"t1"."ChildID"
			FROM
				"Child" "t1"
			LIMIT ?
		) "d" ON 1=1

