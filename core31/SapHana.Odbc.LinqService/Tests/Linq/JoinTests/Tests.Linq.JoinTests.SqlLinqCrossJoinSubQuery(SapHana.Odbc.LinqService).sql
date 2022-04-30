BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 10
DECLARE @take_1  -- Int32
SET     @take_1 = 10

SELECT
	"p_1"."ParentID",
	"c_1"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 0
		LIMIT ?
	) "p_1",
	(
		SELECT
			"t1"."ChildID"
		FROM
			"Child" "t1"
		LIMIT ?
	) "c_1"

