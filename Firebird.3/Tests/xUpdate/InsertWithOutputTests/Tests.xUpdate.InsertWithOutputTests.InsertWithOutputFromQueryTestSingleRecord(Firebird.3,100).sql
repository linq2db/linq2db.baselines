-- Firebird.3 Firebird3
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @param_1 VarChar(3) -- String
SET     @param_1 = '100'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
SELECT
	"s"."Id" + CAST(@param AS Int),
	"s"."Value" + CAST(@param AS Int),
	Coalesce("s"."ValueStr", '') || Coalesce(CAST(@param_1 AS VARCHAR(3)), '')
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
DECLARE @param_1 VarChar(3) -- String
SET     @param_1 = '100'

SELECT
	"s"."Id" + CAST(@param AS Int),
	"s"."Value" + CAST(@param AS Int),
	Coalesce("s"."ValueStr", '') || Coalesce(CAST(@param_1 AS VARCHAR(3)), '')
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

