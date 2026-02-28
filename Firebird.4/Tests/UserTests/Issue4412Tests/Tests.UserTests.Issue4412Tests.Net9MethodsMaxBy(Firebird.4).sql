-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."TestId"
FROM
	"TestTable" "t1"
ORDER BY
	"t1"."Id" DESC
FETCH NEXT 1 ROWS ONLY

