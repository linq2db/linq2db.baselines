﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

UPDATE
	"TableWithData" "i"
SET
	"Value" = 20,
	"ValueStr" = "i"."ValueStr"
WHERE
	"i"."Id" = 7
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

