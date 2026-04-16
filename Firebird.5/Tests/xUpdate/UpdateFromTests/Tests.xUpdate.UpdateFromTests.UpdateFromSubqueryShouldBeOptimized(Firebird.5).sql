-- Firebird.5 Firebird4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

-- Firebird.5 Firebird4

UPDATE
	"UpdateSubquerySourceTable"
SET
	"FirstName" = CASE
		WHEN (
			SELECT
				"canChange"."Id"
			FROM
				"UpdateSubquerySourceTable" "canChange"
			WHERE
				"canChange"."Id" = "UpdateSubquerySourceTable"."Id" + 1
		) IS NOT NULL
			THEN (
			SELECT
				"canChange_1"."FirstName"
			FROM
				"UpdateSubquerySourceTable" "canChange_1"
			WHERE
				"canChange_1"."Id" = "UpdateSubquerySourceTable"."Id" + 1
		)
		ELSE "UpdateSubquerySourceTable"."FirstName"
	END,
	"LastName" = CASE
		WHEN (
			SELECT
				"canChange_2"."Id"
			FROM
				"UpdateSubquerySourceTable" "canChange_2"
			WHERE
				"canChange_2"."Id" = "UpdateSubquerySourceTable"."Id" + 1
		) IS NOT NULL
			THEN (
			SELECT
				"canChange_3"."LastName"
			FROM
				"UpdateSubquerySourceTable" "canChange_3"
			WHERE
				"canChange_3"."Id" = "UpdateSubquerySourceTable"."Id" + 1
		)
		ELSE "UpdateSubquerySourceTable"."LastName"
	END
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

-- Firebird.5 Firebird4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

