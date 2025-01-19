BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

UPDATE
	"TableWithData" "s"
SET
	"Id" = "s"."Id",
	"Value" = "s"."Value" + 1,
	"ValueStr" = "s"."ValueStr" || 'Upd'
WHERE
	"s"."Id" = 3
RETURNING
	OLD."Id",
	OLD."Value",
	OLD."ValueStr",
	NEW."Id",
	NEW."Value",
	NEW."ValueStr"

