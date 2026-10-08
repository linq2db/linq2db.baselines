-- Firebird.4 Firebird4
DECLARE @value Integer -- Int32
SET     @value = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = @value
			) "t1"("value")
		WHERE
			"p"."PersonID" = "t1"."value"
	)

-- Firebird.4 Firebird4
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = @value
			) "t1"("value")
		WHERE
			"p"."PersonID" = "t1"."value"
	)

-- Firebird.4 Firebird4
DECLARE @value Integer -- Int32
SET     @value = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = @value
			) "t1"("value")
		WHERE
			"p"."PersonID" = "t1"."value"
	)

