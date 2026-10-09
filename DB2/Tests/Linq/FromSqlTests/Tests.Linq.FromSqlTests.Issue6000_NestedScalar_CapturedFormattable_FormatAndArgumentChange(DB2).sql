-- DB2 DB2.LUW DB2LUW
DECLARE @In Integer(4) -- Int32
SET     @In = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (
		SELECT
			"t1"."value"
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = @In
			) "t1"("value")
	)

-- DB2 DB2.LUW DB2LUW
DECLARE @In Integer(4) -- Int32
SET     @In = 2

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (
		SELECT
			"t1"."value"
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" <> @In
			) "t1"("value")
	)

-- DB2 DB2.LUW DB2LUW
DECLARE @In Integer(4) -- Int32
SET     @In = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (
		SELECT
			"t1"."value"
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = @In
			) "t1"("value")
	)

