-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
UNION ALL
SELECT
	"p_1"."FirstName" || RTrim(Char('/')) || "p_1"."LastName"
FROM
	"Person" "p_1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName" || RTrim(Char('/')) || "p"."LastName"
FROM
	"Person" "p"
UNION ALL
SELECT
	"p_1"."FirstName"
FROM
	"Person" "p_1"

