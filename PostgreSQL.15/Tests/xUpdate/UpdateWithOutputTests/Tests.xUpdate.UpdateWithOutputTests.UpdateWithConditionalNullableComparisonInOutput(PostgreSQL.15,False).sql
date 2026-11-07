-- PostgreSQL.15 PostgreSQL12
UPDATE
	"DestinationTable"
SET
	"Id" = "DestinationTable"."Id",
	"Value" = "DestinationTable"."Value" + 1,
	"ValueStr" = "DestinationTable"."ValueStr"
RETURNING
	"DestinationTable"."Id",
	NULL

