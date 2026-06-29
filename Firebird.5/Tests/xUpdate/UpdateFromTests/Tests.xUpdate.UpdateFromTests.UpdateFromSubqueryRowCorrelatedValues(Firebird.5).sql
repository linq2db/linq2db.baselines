-- Firebird.5 Firebird4

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

-- Firebird.5 Firebird4

UPDATE
	"UpdateSubquerySourceTable" "x"
SET
	"FirstName" = (
		SELECT
			CASE
				WHEN "canChange"."Id" IS NOT NULL THEN "canChange"."FirstName"
				ELSE "x"."FirstName"
			END
		FROM
			(
				SELECT
					1 as "c1"
				FROM rdb$database
			) "t1"
				LEFT JOIN "UpdateSubquerySourceTable" "canChange" ON "canChange"."Id" = "x"."Id" + 1
	),
	"LastName" = (
		SELECT
			CASE
				WHEN "canChange_1"."Id" IS NOT NULL THEN "canChange_1"."LastName"
				ELSE "x"."LastName"
			END
		FROM
			(
				SELECT
					1 as "c1"
				FROM rdb$database
			) "t2"
				LEFT JOIN "UpdateSubquerySourceTable" "canChange_1" ON "canChange_1"."Id" = "x"."Id" + 1
	)
WHERE
	"x"."Id" = 1

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

