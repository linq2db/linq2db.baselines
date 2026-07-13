-- PostgreSQL.9.2 PostgreSQL
UPDATE
	"TableWithData"
SET
	"Value" = "TableWithData"."Value" + 1,
	"ValueStr" = Coalesce("TableWithData"."ValueStr", '') || 'Upd'
WHERE
	"TableWithData"."Id" = 3
RETURNING
	"TableWithData"."Value"

