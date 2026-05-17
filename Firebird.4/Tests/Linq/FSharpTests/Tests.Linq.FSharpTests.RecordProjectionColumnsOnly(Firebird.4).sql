-- Firebird.4 Firebird4

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	_utf8 x'D0B8D0B1D0BD20D090D0BBD191D188D0B0'
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

