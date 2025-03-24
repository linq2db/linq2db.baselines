BeforeExecute
--  Firebird.4 Firebird4
DECLARE @param Integer -- Int32
SET     @param = 200

SELECT
	"s"."Id" + CAST(@param AS Int),
	"s"."Value" + CAST(@param AS Int),
	"s"."ValueStr" || CAST(@param AS VarChar(11) CHARACTER SET UNICODE_FSS)
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

