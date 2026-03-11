-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."TestId",
	"t1"."NTestId"
FROM
	"TestTable" "t1"
ORDER BY
	"t1"."Id" DESC,
	"t1"."TestId"
FETCH NEXT 1 ROWS ONLY

