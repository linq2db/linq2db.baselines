-- Firebird.3 Firebird3
SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Bin_Or("p"."PersonID", Bin_Xor("p"."PersonID", 1)) = "p"."PersonID"

