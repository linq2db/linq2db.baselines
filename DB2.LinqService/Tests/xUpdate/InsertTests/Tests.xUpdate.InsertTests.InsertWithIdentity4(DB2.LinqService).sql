BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(5) -- String
SET     @FirstName = 'John0'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
		INSERT INTO "Person"
		(
			"FirstName",
			"LastName",
			"MiddleName",
			"Gender"
		)
		VALUES
		(
			@FirstName,
			@LastName,
			@MiddleName,
			@Gender
		)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(5) -- String
SET     @p = 'John0'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @p AND "p"."LastName" = 'Shepard'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(5) -- String
SET     @FirstName = 'John1'
DECLARE @LastName VarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
		INSERT INTO "Person"
		(
			"FirstName",
			"LastName",
			"MiddleName",
			"Gender"
		)
		VALUES
		(
			@FirstName,
			@LastName,
			@MiddleName,
			@Gender
		)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(5) -- String
SET     @p = 'John1'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @p AND "p"."LastName" = 'Shepard'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

