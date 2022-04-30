BeforeExecute
-- Firebird3 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 1 AS "item" FROM rdb$database
				UNION ALL
				SELECT 2 FROM rdb$database
				UNION ALL
				SELECT 3 FROM rdb$database) "v"
		WHERE
			"v"."item" = "p"."PersonID"
	)

