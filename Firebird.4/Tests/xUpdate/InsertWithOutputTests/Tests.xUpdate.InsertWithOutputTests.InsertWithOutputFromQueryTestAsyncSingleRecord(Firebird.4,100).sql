-- Firebird.4 Firebird4
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @param_1 Integer -- Int32
SET     @param_1 = 100
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
	"s"."Value" + CAST(@param_1 AS Int),
	Coalesce("s"."ValueStr", '') || Coalesce(CAST(@ValueStr AS VARCHAR(3)), '')
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3
RETURNING
	"DestinationTable"."Id",
	"DestinationTable"."Value",
	"DestinationTable"."ValueStr"

-- Firebird.4 Firebird4
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @param_1 Integer -- Int32
SET     @param_1 = 100
DECLARE @ValueStr VarChar(3) -- String
SET     @ValueStr = '100'

SELECT
	"s"."Id" + CAST(@param AS Int),
	"s"."Value" + CAST(@param_1 AS Int),
	Coalesce("s"."ValueStr", '') || Coalesce(CAST(@ValueStr AS VARCHAR(3)), '')
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

