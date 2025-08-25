BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"entity1"."FirstName",
	"entity1"."PersonID",
	"entity1"."LastName",
	"entity1"."MiddleName",
	"entity1"."Gender",
	(
		SELECT FIRST 1
			"entity2"."FirstName"
		FROM
			"Person" "entity2"
		WHERE
			"entity2"."PersonID" = "entity1"."PersonID"
	),
	(
		SELECT FIRST 1
			"entity2_1"."PersonID"
		FROM
			"Person" "entity2_1"
		WHERE
			"entity2_1"."PersonID" = "entity1"."PersonID"
	),
	(
		SELECT FIRST 1
			"entity2_2"."LastName"
		FROM
			"Person" "entity2_2"
		WHERE
			"entity2_2"."PersonID" = "entity1"."PersonID"
	),
	(
		SELECT FIRST 1
			"entity2_3"."MiddleName"
		FROM
			"Person" "entity2_3"
		WHERE
			"entity2_3"."PersonID" = "entity1"."PersonID"
	),
	(
		SELECT FIRST 1
			"entity2_4"."Gender"
		FROM
			"Person" "entity2_4"
		WHERE
			"entity2_4"."PersonID" = "entity1"."PersonID"
	)
FROM
	"Person" "entity1"

