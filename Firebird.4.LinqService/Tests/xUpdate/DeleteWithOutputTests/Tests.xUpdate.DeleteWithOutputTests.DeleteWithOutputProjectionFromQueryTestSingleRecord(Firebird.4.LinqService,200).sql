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
	"s"."Id" + 1,
	"s"."ValueStr" || CAST(1 AS VarChar(11) CHARACTER SET UNICODE_FSS),
	"s"."ValueStr" IS NOT NULL

