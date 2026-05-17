-- Firebird.2.5 Firebird

SELECT FIRST 2
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	_utf8 x'D0B8D0B1D0BD20D090D0BBD191D188D0B0'
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

