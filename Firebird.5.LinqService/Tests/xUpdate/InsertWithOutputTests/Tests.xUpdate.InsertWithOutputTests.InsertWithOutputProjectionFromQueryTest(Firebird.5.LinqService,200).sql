BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @param Integer -- Int32
SET     @param = 200

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
SELECT
	"s"."Id" + 100 + CAST(@param AS Int),
	"s"."Value" + 100,
	"s"."ValueStr" || 100
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" > 3
RETURNING
	"DestinationTable"."Id" + 1,
	"DestinationTable"."ValueStr" || 1

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."ValueStr"
FROM
	"DestinationTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t"."Id" + 1,
	"t"."ValueStr" || 1
FROM
	"DestinationTable" "t"

