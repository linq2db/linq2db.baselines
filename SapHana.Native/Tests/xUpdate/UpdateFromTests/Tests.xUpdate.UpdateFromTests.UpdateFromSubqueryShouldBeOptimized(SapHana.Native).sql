-- SapHana.Native SapHana
DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

-- SapHana.Native SapHana
UPDATE
	"UpdateSubquerySourceTable"
SET
	"FirstName" = (
		SELECT
			"canChange"."FirstName"
		FROM
			"UpdateSubquerySourceTable" "canChange"
		WHERE
			"canChange"."Id" = "UpdateSubquerySourceTable"."Id" + 1
	),
	"LastName" = (
		SELECT
			"canChange_1"."LastName"
		FROM
			"UpdateSubquerySourceTable" "canChange_1"
		WHERE
			"canChange_1"."Id" = "UpdateSubquerySourceTable"."Id" + 1
	)
WHERE
	"UpdateSubquerySourceTable"."Id" = 1

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."FirstName",
	"t1"."LastName"
FROM
	"UpdateSubquerySourceTable" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Native SapHana
DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

