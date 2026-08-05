-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @Id_1 Integer(4) -- Int32
SET     @Id_1 = 11

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (VALUES
			(CAST(@Id AS Int)), (CAST(@Id_1 AS Int))
		) "r"("Id") ON "p"."PersonID" = "r"."Id"

