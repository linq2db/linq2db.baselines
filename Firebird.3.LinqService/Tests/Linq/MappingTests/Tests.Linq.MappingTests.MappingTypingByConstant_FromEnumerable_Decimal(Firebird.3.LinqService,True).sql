BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(NULL AS Decimal(18, 10)) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(2147483648.123 AS Decimal(13, 3)) AS "Value" FROM rdb$database) "arg" ON "entity"."PersonID" = "arg"."Id"

