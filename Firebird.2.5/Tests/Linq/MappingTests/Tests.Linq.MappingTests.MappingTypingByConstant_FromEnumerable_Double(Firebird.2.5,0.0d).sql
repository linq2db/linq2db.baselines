BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(0 AS Float) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(3147483648 AS Float) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

