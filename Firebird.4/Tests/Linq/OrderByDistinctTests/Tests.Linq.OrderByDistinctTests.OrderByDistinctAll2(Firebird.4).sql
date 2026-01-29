-- Firebird.4 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"r_1".ID,
	"r_1"."LastName",
	"r_1"."FirstName"
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
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- Firebird.4 Firebird4

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

