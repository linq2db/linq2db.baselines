-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @Id Int -- Int32
SET     @Id = 21
DECLARE @Id Int -- Int32
SET     @Id = 22

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT ? AS "Id" FROM DUMMY
			UNION ALL
			SELECT ? FROM DUMMY
			UNION ALL
			SELECT ? FROM DUMMY) "r" ON "p"."PersonID" = "r"."Id"

