BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"s"."Id",
	"s"."Value",
	"s"."ValueStr"
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3
RETURNING
	"s"."Id",
	"s"."Value",
	"s"."ValueStr"

