BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT CAST('John' AS VARCHAR(4)) AS "item" FROM rdb$database
				UNION ALL
				SELECT CAST('Not John' AS VARCHAR(8)) FROM rdb$database) "y"
		WHERE
			"y"."item" = "x"."FirstName"
	)

