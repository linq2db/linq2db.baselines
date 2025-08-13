BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(NULL AS Real) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(3.14748365E+09 AS Real) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

