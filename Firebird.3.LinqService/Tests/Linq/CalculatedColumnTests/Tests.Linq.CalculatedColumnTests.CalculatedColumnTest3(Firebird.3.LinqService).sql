BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Doctor" "d_1"
		WHERE
			"d_1"."PersonID" = "i_1"."PersonID"
	),
	"i_1"."PersonID",
	"i_1"."FirstName",
	"i_1"."LastName",
	"i_1"."MiddleName",
	"i_1"."Gender",
	"i_1"."FullName",
	"i_1"."FullName",
	"i_1"."DoctorCount"
FROM
	(
		SELECT
			"i"."FirstName",
			"i"."PersonID",
			"i"."LastName",
			"i"."MiddleName",
			"i"."Gender",
			"i"."LastName" || ', ' || "i"."FirstName" as "FullName",
			(
				SELECT
					COUNT(*)
				FROM
					"Doctor" "d"
				WHERE
					"d"."PersonID" = "i"."PersonID"
			) as "DoctorCount"
		FROM
			"Person" "i"
	) "i_1"
WHERE
	"i_1"."FirstName" <> 'John'

