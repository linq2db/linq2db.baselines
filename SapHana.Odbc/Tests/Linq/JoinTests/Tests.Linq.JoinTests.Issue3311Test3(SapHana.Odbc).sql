BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"u"."PersonID",
	"x"."PersonID"
FROM
	"Person" "u"
		INNER JOIN LATERAL (
			SELECT
				"l"."PersonID"
			FROM
				(
					SELECT
						*
FROM DUMMY
				) "r"
					LEFT JOIN "Patient" "l" ON "l"."PersonID" = "u"."PersonID"
		) "x" ON 1=1

