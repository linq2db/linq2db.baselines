BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT
				'Doe' as "Item"
FROM DUMMY
		) "n" ON "p"."LastName" = "n"."Item"

