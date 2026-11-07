-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 21
DECLARE @Id_2 Integer -- Int32
SET     @Id_2 = 22

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
			SELECT :"Id_1" FROM DUMMY
			UNION ALL
			SELECT :"Id_2" FROM DUMMY) "r" ON "p"."PersonID" = "r"."Id"

