-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
UPDATE
	"DestinationTable"
SET
	"Id" = "DestinationTable"."Id",
	"Value" = "DestinationTable"."Value" + 1,
	"ValueStr" = "DestinationTable"."ValueStr"
RETURNING
	"DestinationTable"."Id",
	"DestinationTable"."ValueStr" <> 'Str1' OR "DestinationTable"."ValueStr" IS NULL

