-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	CAST("p"."ParentID" AS BigInt) = @id

