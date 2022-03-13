BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH "cte" ("FirstName")
AS
(
	SELECT
		"p"."FirstName"
	FROM
		"Person" "p"
	UNION ALL
	SELECT
		"t1"."FirstName"
	FROM
		(
			SELECT
				"r"."FirstName" || '/' || "r"."LastName" as "FirstName"
			FROM
				"cte" "p_1",
				"Person" "r"
			WHERE
				"p_1"."FirstName" = "r"."LastName"
		) "t1"
)
SELECT
	"t2"."FirstName"
FROM
	"cte" "t2"

