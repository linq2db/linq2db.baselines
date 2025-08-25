BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"s"."Id",
	"s"."Value",
	"s"."ValueStr"
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" > 3

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

DELETE FROM
	"TableWithData" "s"
WHERE
	"s"."Id" > 3
RETURNING
	"s"."Id",
	"s"."Value",
	"s"."ValueStr"

