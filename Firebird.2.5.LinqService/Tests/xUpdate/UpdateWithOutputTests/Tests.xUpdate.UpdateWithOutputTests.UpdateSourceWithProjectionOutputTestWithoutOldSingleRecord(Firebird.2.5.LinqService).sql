﻿BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"TableWithData" "s"
SET
	"Id" = "s"."Id",
	"Value" = "s"."Value" + 1,
	"ValueStr" = "s"."ValueStr" || 'Upd'
WHERE
	"s"."Id" = 3
RETURNING
	NEW."Value"

