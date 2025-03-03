BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

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

