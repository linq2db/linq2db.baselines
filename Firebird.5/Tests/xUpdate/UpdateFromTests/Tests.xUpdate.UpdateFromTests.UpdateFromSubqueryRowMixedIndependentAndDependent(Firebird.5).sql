-- Firebird.5 Firebird4

UPDATE
	"UpdateSubquerySourceTable"
SET
	"FirstName" = 'literalFirst',
	"LastName" = (
		SELECT
			"t"."LastName"
		FROM
			"UpdateSubquerySourceTable" "t"
		WHERE
			"t"."Id" = "UpdateSubquerySourceTable"."Id" + 1
		FETCH NEXT 1 ROWS ONLY
	)
WHERE
	"UpdateSubquerySourceTable"."Id" = 1

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."FirstName",
	"t1"."LastName"
FROM
	"UpdateSubquerySourceTable" "t1"
ORDER BY
	"t1"."Id"

