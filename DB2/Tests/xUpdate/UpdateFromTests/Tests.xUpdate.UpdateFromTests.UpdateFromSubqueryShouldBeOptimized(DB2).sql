-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

-- DB2 DB2.LUW DB2LUW

UPDATE
	"UpdateSubquerySourceTable"
SET
	("FirstName", "LastName") = (
		SELECT
			"canChange"."FirstName",
			"canChange"."LastName"
		FROM
			"UpdateSubquerySourceTable" "canChange"
		WHERE
			"canChange"."Id" = "UpdateSubquerySourceTable"."Id" + 1
	)
WHERE
	"UpdateSubquerySourceTable"."Id" = 1

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."FirstName",
	"t1"."LastName"
FROM
	"UpdateSubquerySourceTable" "t1"
ORDER BY
	"t1"."Id"

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

