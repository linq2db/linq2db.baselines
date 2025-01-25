BeforeExecute
-- Firebird.4 Firebird4

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

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

