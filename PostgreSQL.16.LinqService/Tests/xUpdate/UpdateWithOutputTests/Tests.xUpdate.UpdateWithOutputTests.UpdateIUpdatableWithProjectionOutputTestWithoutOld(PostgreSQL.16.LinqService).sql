﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"TableWithData"
SET
	"Value" = "TableWithData"."Value" + 1,
	"ValueStr" = "TableWithData"."ValueStr" || 'Upd'
WHERE
	"TableWithData"."Id" > 3
RETURNING
	"TableWithData"."Value"

