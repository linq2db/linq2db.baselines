BeforeExecute
-- DB2 DB2.LUW DB2LUW

ALTER TABLE "Person" ALTER COLUMN "PersonID" RESTART WITH 5

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName VarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'U'

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

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."FirstName" = 'test_inherited_insert'
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName VarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'U'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"Person"."FirstName" = @FirstName,
	"Person"."LastName" = @LastName,
	"Person"."MiddleName" = @MiddleName,
	"Person"."Gender" = @Gender
WHERE
	"Person"."PersonID" = @ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."FirstName" = 'test_inherited_insert'
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "_"
WHERE
	"_"."FirstName" = 'test_inherited_insert'

