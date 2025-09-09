BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 10000

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id1 OR "p"."ParentID" >= @id1 OR
	"p"."ParentID" >= @id2
ORDER BY
	"p"."ParentID"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 2
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 10000

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id1 OR "p"."ParentID" >= @id1 OR
	"p"."ParentID" >= @id2
ORDER BY
	"p"."ParentID"
FETCH NEXT 1 ROWS ONLY

