BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(1 AS Decimal(10, 0)) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(2147483648 AS Decimal(10, 0)) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

