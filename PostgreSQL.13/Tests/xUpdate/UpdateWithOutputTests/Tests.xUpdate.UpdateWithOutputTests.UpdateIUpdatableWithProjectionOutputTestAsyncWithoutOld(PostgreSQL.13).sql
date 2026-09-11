-- PostgreSQL.13 PostgreSQL12
UPDATE
	"TableWithData"
SET
	"Value" = "TableWithData"."Value" + 1,
	"ValueStr" = Coalesce("TableWithData"."ValueStr", '') || 'Upd'
WHERE
	"TableWithData"."Id" > 3
RETURNING
	"TableWithData"."Value"

