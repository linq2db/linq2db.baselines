BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

UPDATE
	"TableWithData"
SET
	"Value" = "TableWithData"."Value" + 1,
	"ValueStr" = "TableWithData"."ValueStr" || 'Upd'
WHERE
	"TableWithData"."Id" > 3
RETURNING
	"TableWithData"."Value"

