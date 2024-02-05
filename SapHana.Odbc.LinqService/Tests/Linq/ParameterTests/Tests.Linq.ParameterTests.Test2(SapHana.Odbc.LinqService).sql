BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id1  -- Int32
SET     @id1 = 1
DECLARE @id1  -- Int32
SET     @id1 = 1
DECLARE @id2  -- Int32
SET     @id2 = 10000
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	(("p"."ParentID" = ? OR "p"."ParentID" >= ?) OR "p"."ParentID" >= ?)
ORDER BY
	"p"."ParentID"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id1  -- Int32
SET     @id1 = 2
DECLARE @id1  -- Int32
SET     @id1 = 2
DECLARE @id2  -- Int32
SET     @id2 = 10000
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	(("p"."ParentID" = ? OR "p"."ParentID" >= ?) OR "p"."ParentID" >= ?)
ORDER BY
	"p"."ParentID"
LIMIT ?

