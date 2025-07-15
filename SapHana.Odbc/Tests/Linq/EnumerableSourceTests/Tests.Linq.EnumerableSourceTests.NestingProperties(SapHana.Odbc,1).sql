BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."FirstName",
	"x"."ID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	(
		SELECT 1 AS "Patient_PersonID", 'Janet' AS "FirstName", 2 AS "ID", NULL AS "LastName", NULL AS "MiddleName", 'M' AS "Gender" FROM DUMMY
		UNION ALL
		SELECT NULL, 'Doe', 3, NULL, NULL, 'M' FROM DUMMY) "x"
WHERE
	"x"."Patient_PersonID" = 1

