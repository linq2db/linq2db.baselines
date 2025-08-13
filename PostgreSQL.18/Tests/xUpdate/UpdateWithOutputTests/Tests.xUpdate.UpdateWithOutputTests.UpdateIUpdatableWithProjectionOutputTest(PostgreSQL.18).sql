BeforeExecute
-- PostgreSQL.18 PostgreSQL

UPDATE
	"TableWithData"
SET
	"Value" = "TableWithData"."Value" + 1,
	"ValueStr" = "TableWithData"."ValueStr" || 'Upd'
WHERE
	"TableWithData"."Id" > 3
RETURNING
	OLD."Value",
	NEW."Value"

