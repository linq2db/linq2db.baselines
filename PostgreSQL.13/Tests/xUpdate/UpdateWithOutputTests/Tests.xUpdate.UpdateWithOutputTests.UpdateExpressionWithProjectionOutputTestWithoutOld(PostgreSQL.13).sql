BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

UPDATE
	"DestinationTable"
SET
	"Id" = s."Id",
	"Value" = s."Value",
	"ValueStr" = s."ValueStr"
FROM
	"TableWithData" s
WHERE
	"DestinationTable"."Id" = s."Id"
RETURNING
	s."ValueStr",
	"DestinationTable"."Value"

