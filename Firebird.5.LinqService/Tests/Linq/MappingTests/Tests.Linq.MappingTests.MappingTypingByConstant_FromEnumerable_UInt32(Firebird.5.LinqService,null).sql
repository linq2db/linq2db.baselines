BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(NULL AS BigInt) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(2147483648 AS BigInt) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

