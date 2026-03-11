-- Firebird.3 Firebird3

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(NULL AS DOUBLE PRECISION) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

-- Firebird.3 Firebird3

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(3147483648 AS DOUBLE PRECISION) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

