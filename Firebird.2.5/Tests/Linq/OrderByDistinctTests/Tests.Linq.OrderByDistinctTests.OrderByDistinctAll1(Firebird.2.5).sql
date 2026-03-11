-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST @take SKIP @skip
	"r_1".ID,
	"r_1"."LastName"
FROM
	(
		SELECT DISTINCT
			"r"."FirstName",
			"r"."PersonID" as ID,
			"r"."LastName",
			"r"."MiddleName",
			"r"."Gender"
		FROM
			"Person" "r"
	) "r_1"
ORDER BY
	"r_1"."FirstName"

-- Firebird.2.5 Firebird

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

