-- SapHana.Native SapHana
DECLARE @gender Integer -- Int32
SET     @gender = 1
DECLARE @gender_1 Integer -- Int32
SET     @gender_1 = 1
DECLARE @gender_2 Integer -- Int32
SET     @gender_2 = 1

SELECT
	"p_2"."ID",
	"p_2"."Gender"
FROM
	(
		SELECT
			CAST(:"gender" AS Integer) as "Gender",
			"p"."PersonID" as "ID"
		FROM
			"Person" "p"
		UNION ALL
		SELECT
			CAST(:"gender_1" AS Integer) as "Gender",
			"p_1"."PersonID" as "ID"
		FROM
			"Person" "p_1"
	) "p_2"
WHERE
	"p_2"."Gender" = :"gender_2"

-- SapHana.Native SapHana
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

