-- Firebird.5 Firebird4

UPDATE
	"UpdateSubquerySourceTable"
SET
	"FirstName" = (
		SELECT
			(
				SELECT
					"t"."FirstName"
				FROM rdb$database
			)
		FROM
			"UpdateSubquerySourceTable" "t"
		WHERE
			"t"."Id" = "UpdateSubquerySourceTable"."Id" + 1
	),
	"LastName" = (
		SELECT
			(
				SELECT
					"t_1"."LastName"
				FROM rdb$database
			)
		FROM
			"UpdateSubquerySourceTable" "t_1"
		WHERE
			"t_1"."Id" = "UpdateSubquerySourceTable"."Id" + 1
	)
WHERE
	"UpdateSubquerySourceTable"."Id" = 1

