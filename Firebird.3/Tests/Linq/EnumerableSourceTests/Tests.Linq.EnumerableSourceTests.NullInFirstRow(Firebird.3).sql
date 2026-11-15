-- Firebird.3 Firebird3
SELECT
	"r"."Id",
	"r"."Value",
	"r"."Name"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT 1 AS "Id", CAST(NULL AS Int) AS "Value", CAST('a' AS VARCHAR(1)) AS "Name" FROM rdb$database
			UNION ALL
			SELECT 2, 2, NULL FROM rdb$database) "r" ON "p"."PersonID" = "r"."Id"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

