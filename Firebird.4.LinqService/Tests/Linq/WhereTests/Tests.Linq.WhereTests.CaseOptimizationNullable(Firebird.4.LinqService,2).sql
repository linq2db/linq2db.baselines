BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @filterValue Integer -- Int32
SET     @filterValue = 2

SELECT
	"x"."Id",
	"x"."StringValue"
FROM
	"WhereWithString" "x"
WHERE
	"x"."Id" = @filterValue

