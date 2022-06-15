BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @p  -- Int32
SET     @p = 1
DECLARE @p_1  -- Int32
SET     @p_1 = 2
DECLARE @p_2  -- Int32
SET     @p_2 = 3
DECLARE @param  -- Int32
SET     @param = 4

SELECT
	"o"."ParentID",
	"o"."Value1"
FROM
	"Parent" "o"
WHERE
	("o"."ParentID" IN (?, ?, ?) OR "o"."ParentID" = ?)
LIMIT 1

