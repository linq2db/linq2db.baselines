BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 10

SELECT
	"x"."ChildID"
FROM
	"Child" "x"
WHERE
	"x"."ChildID" = @id
FETCH FIRST 1 ROWS ONLY

