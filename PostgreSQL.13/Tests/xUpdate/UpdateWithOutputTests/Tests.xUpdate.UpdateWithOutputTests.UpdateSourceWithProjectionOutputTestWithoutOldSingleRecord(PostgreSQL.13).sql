BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

UPDATE
	"TableWithData"
SET
	"Id" = "TableWithData"."Id",
	"Value" = "TableWithData"."Value" + 1,
	"ValueStr" = "TableWithData"."ValueStr" || 'Upd'
WHERE
	"TableWithData"."Id" = 3
RETURNING
	"TableWithData"."Value"

