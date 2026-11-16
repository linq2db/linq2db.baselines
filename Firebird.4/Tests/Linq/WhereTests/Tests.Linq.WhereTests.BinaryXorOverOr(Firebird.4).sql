-- Firebird.4 Firebird4
SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Bin_Or(Bin_Xor("p"."PersonID", 1), 2) = 3

