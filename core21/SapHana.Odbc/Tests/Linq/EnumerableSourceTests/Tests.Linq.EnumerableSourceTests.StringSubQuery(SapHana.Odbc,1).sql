BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
				SELECT 'j' AS "item" FROM DUMMY
				UNION ALL
				SELECT 'o' FROM DUMMY
				UNION ALL
				SELECT 'h' FROM DUMMY
				UNION ALL
				SELECT 'n' FROM DUMMY) "t1"
		WHERE
			Locate("t"."FirstName", "t1"."item") - 1 > 0
	)

