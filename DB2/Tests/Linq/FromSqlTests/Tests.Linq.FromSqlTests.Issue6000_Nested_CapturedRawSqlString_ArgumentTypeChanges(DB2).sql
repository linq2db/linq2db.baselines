-- DB2 DB2.LUW DB2LUW
DECLARE @args Integer(4) -- Int32
SET     @args = 1

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
				SELECT * FROM "Person" WHERE "PersonID" = @args
			) "s"
		WHERE
			"s"."PersonID" = "p"."PersonID"
	)

-- DB2 DB2.LUW DB2LUW
DECLARE @args BigInt(8) -- Int64
SET     @args = 2

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
				SELECT * FROM "Person" WHERE "PersonID" = @args
			) "s"
		WHERE
			"s"."PersonID" = "p"."PersonID"
	)

-- DB2 DB2.LUW DB2LUW
DECLARE @args Integer(4) -- Int32
SET     @args = 1

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
				SELECT * FROM "Person" WHERE "PersonID" = @args
			) "s"
		WHERE
			"s"."PersonID" = "p"."PersonID"
	)

