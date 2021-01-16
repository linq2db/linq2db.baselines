BeforeExecute
-- Firebird

SET GENERATOR "PersonID" TO 4

BeforeExecute
-- Firebird
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
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
-- Firebird
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	"Person"
SET
	"Person"."FirstName" = @FirstName
WHERE
	"Person"."PersonID" = @ID

BeforeExecute
-- Firebird
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName VarChar(25) -- String
SET     @LastName = 'UpdateColumnFilterUpdated'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
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
-- Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	"Person" "x"
WHERE
	"x"."PersonID" = @ID

