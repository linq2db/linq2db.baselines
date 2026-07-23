-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	CAST(@p AS Int),
	"c_1"."Id"
FROM
	"AsyncDataTable" "c_1"
WHERE
	"c_1"."Id" = @p
FETCH NEXT 1 ROWS ONLY

