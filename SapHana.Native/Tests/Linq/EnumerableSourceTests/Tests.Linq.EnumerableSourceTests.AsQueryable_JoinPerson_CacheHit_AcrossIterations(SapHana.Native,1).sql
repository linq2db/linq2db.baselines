-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 11

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT :"Id" AS "Id" FROM DUMMY
			UNION ALL
			SELECT :"Id_1" FROM DUMMY) "r" ON "p"."PersonID" = "r"."Id"

