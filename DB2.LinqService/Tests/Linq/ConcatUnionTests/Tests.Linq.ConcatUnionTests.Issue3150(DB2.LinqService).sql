BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID",
	"p"."FirstName",
	Char('id=1', 255)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
UNION ALL
SELECT
	"p_1"."PersonID",
	"p_1"."FirstName",
	Char('id=2', 255)
FROM
	"Person" "p_1"
WHERE
	"p_1"."PersonID" = 2

