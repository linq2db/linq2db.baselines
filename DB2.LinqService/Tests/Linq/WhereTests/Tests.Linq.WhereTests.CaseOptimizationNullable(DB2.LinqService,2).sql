BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @filterValue Integer(4) -- Int32
SET     @filterValue = 2

SELECT
	"x"."Id",
	"x"."StringValue"
FROM
	"WhereWithString" "x"
WHERE
	"x"."Id" = @filterValue

