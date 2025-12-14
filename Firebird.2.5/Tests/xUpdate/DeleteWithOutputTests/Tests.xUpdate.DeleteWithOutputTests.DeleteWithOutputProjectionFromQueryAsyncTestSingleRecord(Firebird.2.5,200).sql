-- Firebird.2.5 Firebird

SELECT
	"s"."Id",
	"s"."Value",
	"s"."ValueStr"
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

-- Firebird.2.5 Firebird

DELETE FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3
RETURNING
	"s"."Id" + 1,
	"s"."ValueStr" || 1

