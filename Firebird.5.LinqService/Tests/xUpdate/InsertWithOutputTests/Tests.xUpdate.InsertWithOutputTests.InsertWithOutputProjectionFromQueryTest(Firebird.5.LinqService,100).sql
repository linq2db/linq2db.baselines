BeforeExecute
--  Firebird.5 Firebird4
DECLARE @param Integer -- Int32
SET     @param = 100

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
SELECT
	"s"."Id" + 100 + CAST(@param AS Int),
	"s"."Value" + 100,
	"s"."ValueStr" || CAST(100 AS VarChar(11) CHARACTER SET UNICODE_FSS)
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" > 3
RETURNING
	"DestinationTable"."Id" + 1,
	"DestinationTable"."ValueStr" || CAST(1 AS VarChar(11) CHARACTER SET UNICODE_FSS)

BeforeExecute
--  Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."ValueStr"
FROM
	"DestinationTable" "t1"

BeforeExecute
--  Firebird.5 Firebird4

SELECT
	"t"."Id" + 1,
	"t"."ValueStr" || CAST(1 AS VarChar(11) CHARACTER SET UNICODE_FSS)
FROM
	"DestinationTable" "t"

