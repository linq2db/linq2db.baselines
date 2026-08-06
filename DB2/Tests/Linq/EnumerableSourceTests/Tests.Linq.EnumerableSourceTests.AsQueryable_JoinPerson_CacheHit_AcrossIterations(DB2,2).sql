-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 20
DECLARE @Id_1 Integer(4) -- Int32
SET     @Id_1 = 21
DECLARE @Id_2 Integer(4) -- Int32
SET     @Id_2 = 22

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (VALUES
			(CAST(@Id AS Int)), (CAST(@Id_1 AS Int)), (CAST(@Id_2 AS Int))
		) "r"("Id") ON "p"."PersonID" = "r"."Id"

