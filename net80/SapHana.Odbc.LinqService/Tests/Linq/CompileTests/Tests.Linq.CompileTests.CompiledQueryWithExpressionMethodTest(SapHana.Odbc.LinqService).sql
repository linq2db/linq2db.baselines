BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = ?
ORDER BY
	"x"."ParentID" DESC
LIMIT ?

