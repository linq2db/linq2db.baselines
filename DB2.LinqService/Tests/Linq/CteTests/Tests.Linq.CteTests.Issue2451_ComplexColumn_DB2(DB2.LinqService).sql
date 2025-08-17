BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

WITH "cte" ("FirstName")
AS
(
	SELECT
		"p"."FirstName"
	FROM
		"Person" "p"
	UNION ALL
	SELECT
		"r"."FirstName" || '/' || "r"."LastName"
	FROM
		"cte" "t1",
		"Person" "r"
	WHERE
		"t1"."FirstName" = "r"."LastName"
)
SELECT
	"t2"."FirstName"
FROM
	"cte" "t2"

