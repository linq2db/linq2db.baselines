﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"s"."Id",
	"s"."Value",
	"s"."ValueStr"
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

DELETE FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3
RETURNING
	"s"."Id" + 1,
	"s"."ValueStr" || CAST(1 AS VarChar(11) CHARACTER SET UNICODE_FSS)

