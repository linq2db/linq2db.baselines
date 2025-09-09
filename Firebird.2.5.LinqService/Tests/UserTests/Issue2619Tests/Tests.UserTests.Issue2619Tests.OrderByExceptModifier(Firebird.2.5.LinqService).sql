BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT DISTINCT
	"t2"."FirstName",
	"t2".ID,
	"t2"."LastName",
	"t2"."MiddleName",
	"t2"."Gender"
FROM
	(
		SELECT FIRST @take
			"t1"."FirstName",
			"t1"."PersonID" as ID,
			"t1"."LastName",
			"t1"."MiddleName",
			"t1"."Gender"
		FROM
			"Person" "t1"
		ORDER BY
			"t1"."LastName"
	) "t2"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			(
				SELECT FIRST @take
					"t3"."FirstName",
					"t3"."PersonID" as ID,
					"t3"."LastName",
					"t3"."MiddleName",
					"t3"."Gender"
				FROM
					"Person" "t3"
				ORDER BY
					"t3"."LastName"
			) "t4"
		WHERE
			"t2"."FirstName" = "t4"."FirstName" AND
			"t2".ID = "t4".ID AND
			"t2"."LastName" = "t4"."LastName" AND
			("t2"."MiddleName" = "t4"."MiddleName" OR "t2"."MiddleName" IS NULL AND "t4"."MiddleName" IS NULL) AND
			"t2"."Gender" = "t4"."Gender"
	)

