-- PostgreSQL.18 PostgreSQL13

UPDATE
	"TableWithData"
SET
	"Value" = "TableWithData"."Value" + 1,
	"ValueStr" = Coalesce("TableWithData"."ValueStr", '') || 'Upd'
WHERE
	"TableWithData"."Id" > 3
RETURNING
	OLD."Value",
	NEW."Value"

