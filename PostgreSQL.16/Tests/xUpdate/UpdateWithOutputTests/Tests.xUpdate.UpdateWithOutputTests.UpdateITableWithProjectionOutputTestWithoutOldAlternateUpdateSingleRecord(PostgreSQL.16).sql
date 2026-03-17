-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"DestinationTable"
SET
	"Value" = t1."Value",
	"ValueStr" = t1."ValueStr"
FROM
	"TableWithData" t1
WHERE
	t1."Id" = 3 AND "DestinationTable"."Id" = t1."Id"
RETURNING
	"DestinationTable"."Value"

