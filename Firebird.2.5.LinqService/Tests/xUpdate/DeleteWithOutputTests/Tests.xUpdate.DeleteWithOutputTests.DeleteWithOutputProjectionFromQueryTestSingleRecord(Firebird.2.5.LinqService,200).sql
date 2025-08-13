BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"s"."Id",
	"s"."Value",
	"s"."ValueStr"
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"TableWithData" "s"
WHERE
	"s"."Id" = 3
RETURNING
	"s"."Id" + 1,
	"s"."ValueStr" || 1,
	CASE
		WHEN "s"."ValueStr" IS NOT NULL THEN '1'
		ELSE '0'
	END

