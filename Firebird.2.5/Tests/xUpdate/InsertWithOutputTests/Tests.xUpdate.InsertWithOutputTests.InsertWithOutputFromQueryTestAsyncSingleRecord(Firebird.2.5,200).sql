-- Firebird.2.5 Firebird
DECLARE @param Integer -- Int32
SET     @param = 200
DECLARE @ValueStr VarChar(3) -- String
SET     @ValueStr = '200'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
SELECT
	"s"."Id" + CAST(@param AS Int),
	"s"."Value" + CAST(@param AS Int),
	"s"."ValueStr" || CAST(@ValueStr AS VARCHAR(3))
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3
RETURNING
	"DestinationTable"."Id",
	"DestinationTable"."Value",
	"DestinationTable"."ValueStr"

-- Firebird.2.5 Firebird
DECLARE @param Integer -- Int32
SET     @param = 200
DECLARE @ValueStr VarChar(3) -- String
SET     @ValueStr = '200'

SELECT
	"s"."Id" + CAST(@param AS Int),
	"s"."Value" + CAST(@param AS Int),
	"s"."ValueStr" || CAST(@ValueStr AS VARCHAR(3))
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

