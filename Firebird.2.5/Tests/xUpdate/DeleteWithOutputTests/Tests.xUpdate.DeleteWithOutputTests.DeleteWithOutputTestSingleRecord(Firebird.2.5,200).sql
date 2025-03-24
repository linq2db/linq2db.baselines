﻿BeforeExecute
--  Firebird.2.5 Firebird

SELECT
	"s"."Id",
	"s"."Value",
	"s"."ValueStr"
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

BeforeExecute
--  Firebird.2.5 Firebird

DELETE FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3
RETURNING
	"s"."Id",
	"s"."Value",
	"s"."ValueStr"

