-- Firebird.4 Firebird4
SELECT
	"s"."Id",
	"s"."Value",
	"s"."ValueStr"
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

-- Firebird.4 Firebird4
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @param_1 VarChar(3) -- String
SET     @param_1 = '100'

DELETE FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3
RETURNING
	"s"."Id" + CAST(@param AS Int),
	"s"."Value" + CAST(@param AS Int),
	Coalesce("s"."ValueStr", '') || Coalesce(CAST(@param_1 AS VARCHAR(3)), '')

