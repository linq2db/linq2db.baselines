-- Firebird.3 Firebird3
SELECT
	"x"."Usd"
FROM
	"Rate" "x"
WHERE
	"x"."Id" = 2
FETCH NEXT 2 ROWS ONLY

