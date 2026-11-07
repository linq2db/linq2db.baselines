-- Firebird.5 Firebird4
UPDATE
	"DestinationTable" "t1"
SET
	"Id" = "t1"."Id",
	"Value" = "t1"."Value" + 1,
	"ValueStr" = "t1"."ValueStr"
RETURNING
	NEW."Id",
	NEW."ValueStr" <> 'Str1' OR NEW."ValueStr" IS NULL

