-- PostgreSQL.18 PostgreSQL12
UPDATE
	"DestinationTable"
SET
	"Id" = "DestinationTable"."Id",
	"Value" = "DestinationTable"."Value" + 1,
	"ValueStr" = "DestinationTable"."ValueStr"
RETURNING
	NEW."Id",
	NEW."ValueStr" <> 'Str1' OR NEW."ValueStr" IS NULL

