BeforeExecute
-- Firebird.5 Firebird4

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

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

