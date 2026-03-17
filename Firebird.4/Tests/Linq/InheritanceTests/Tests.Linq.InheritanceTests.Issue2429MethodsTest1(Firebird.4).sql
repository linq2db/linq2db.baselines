-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Value"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1
FETCH NEXT 1 ROWS ONLY

-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Value"
FROM
	"BaseTable" "x"
WHERE
	"x"."Id" = 1 AND "x"."Value" = 100
FETCH NEXT 1 ROWS ONLY

