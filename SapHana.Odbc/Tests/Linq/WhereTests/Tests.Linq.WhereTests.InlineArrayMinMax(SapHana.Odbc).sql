-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	(
		SELECT
			MAX("t1"."item")
		FROM
			(
				SELECT "p"."PersonID" AS "item" FROM DUMMY
				UNION ALL
				SELECT 2 FROM DUMMY) "t1"
	) = 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	(
		SELECT
			MIN("t1"."item")
		FROM
			(
				SELECT "p"."PersonID" AS "item" FROM DUMMY
				UNION ALL
				SELECT 2 FROM DUMMY) "t1"
	) = 2

