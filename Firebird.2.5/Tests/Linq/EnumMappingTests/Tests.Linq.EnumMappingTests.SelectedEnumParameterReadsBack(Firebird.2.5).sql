-- Firebird.2.5 Firebird
DECLARE @gender Integer -- Int32
SET     @gender = 1

SELECT
	"p"."PersonID",
	CAST(@gender AS Int)
FROM
	"Person" "p"

-- Firebird.2.5 Firebird
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

