BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	CAST(@p AS Int),
	"c_1"."Id"
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" = CAST(@p AS Int)
FETCH NEXT 2 ROWS ONLY

