BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

UPDATE
	"TableWithData" "s"
SET
	"Value" = "s"."Value" + 1,
	"ValueStr" = "s"."ValueStr" || 'Upd'
WHERE
	"s"."Id" = 3
RETURNING
	OLD."Value",
	NEW."Value"

