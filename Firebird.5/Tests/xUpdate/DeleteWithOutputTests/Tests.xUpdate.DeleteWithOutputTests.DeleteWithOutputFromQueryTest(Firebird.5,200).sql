﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"s"."Id",
	"s"."Value",
	"s"."ValueStr"
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" > 3

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @param Integer -- Int32
SET     @param = 200

DELETE FROM
	"TableWithData" "s"
WHERE
	"s"."Id" > 3
RETURNING
	"s"."Id" + CAST(@param AS Int),
	"s"."Value" + CAST(@param AS Int),
	"s"."ValueStr" || CAST(CAST(@param AS Int) AS VARCHAR(8191))

