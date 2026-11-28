-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 2

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	CAST("p"."ParentID" AS BigInt) = @id

