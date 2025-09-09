BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"x"."Id",
	"x"."Value"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"x"."Id",
	"x"."Value"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1 AND "x"."Value" = 100
FETCH NEXT 1 ROWS ONLY

