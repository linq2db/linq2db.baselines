-- Firebird.4 Firebird4

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(0 AS DOUBLE PRECISION) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

-- Firebird.4 Firebird4

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(3147483648 AS DOUBLE PRECISION) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

