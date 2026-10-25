-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	CAST("p"."ParentID" AS BigInt) = @id

