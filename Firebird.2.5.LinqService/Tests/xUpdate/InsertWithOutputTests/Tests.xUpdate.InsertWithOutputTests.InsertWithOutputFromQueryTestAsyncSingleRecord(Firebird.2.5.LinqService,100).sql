BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @param Integer -- Int32
SET     @param = 100

SELECT
	"s"."Id" + CAST(@param AS Int),
	"s"."Value" + CAST(@param AS Int),
	"s"."ValueStr" || CAST(@param AS VarChar(11) CHARACTER SET UNICODE_FSS)
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

