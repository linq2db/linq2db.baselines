-- Firebird.2.5 Firebird
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
			SELECT CAST(@Id AS Int) AS "Id" FROM rdb$database
			UNION ALL
			SELECT CAST(@Id_1 AS Int) FROM rdb$database) "r" ON "p"."PersonID" = "r"."Id"

