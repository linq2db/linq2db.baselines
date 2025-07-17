BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	"t2"."ParentID",
	"t2"."Value1"
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."Value1"
		FROM
			"Parent" "t1"
		LIMIT ?
	) "t2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

