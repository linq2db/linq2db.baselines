BeforeExecute
-- Firebird3 Firebird

SELECT
	"t"."FirstName",
	"t"."PersonID",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 'j' AS "item" FROM rdb$database
				UNION ALL
				SELECT 'o' FROM rdb$database
				UNION ALL
				SELECT 'h' FROM rdb$database
				UNION ALL
				SELECT 'n' FROM rdb$database) "t1"
		WHERE
			Position("t1"."item", "t"."FirstName") - 1 > 0
	)

