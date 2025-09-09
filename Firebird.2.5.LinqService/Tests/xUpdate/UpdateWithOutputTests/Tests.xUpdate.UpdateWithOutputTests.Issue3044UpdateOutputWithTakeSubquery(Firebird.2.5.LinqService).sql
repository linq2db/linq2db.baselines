BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1

UPDATE
	"TableWithData" "i"
SET
	"Id" = 20,
	"Value" = "i"."Value",
	"ValueStr" = "i"."ValueStr"
WHERE
	"i"."Id" >= 7
ORDER BY
	"i"."Id"
ROWS @take
RETURNING
	OLD."Id",
	OLD."Value",
	OLD."ValueStr",
	NEW."Id",
	NEW."Value",
	NEW."ValueStr"

