-- Firebird.3 Firebird3
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @ValueStr VarChar(3) -- String
SET     @ValueStr = '100'

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

-- Firebird.3 Firebird3
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @ValueStr VarChar(3) -- String
SET     @ValueStr = '100'

SELECT
	"s"."Id" + CAST(@param AS Int),
	"s"."Value" + CAST(@param AS Int),
	"s"."ValueStr" || CAST(@ValueStr AS VARCHAR(3))
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

