BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

UPDATE
	"TableWithData" "s"
SET
	"Value" = "s"."Value" + 1,
	"ValueStr" = "s"."ValueStr" || 'Upd'
WHERE
	"s"."Id" = 3
RETURNING
	NEW."Value"

