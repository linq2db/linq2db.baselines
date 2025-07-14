BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

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

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @FirstName
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	"Person" "t1"
SET
	"FirstName" = @FirstName,
	"LastName" = @LastName,
	"Gender" = @Gender
WHERE
	"t1"."PersonID" = @ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @FirstName
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @newName VarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @newName

