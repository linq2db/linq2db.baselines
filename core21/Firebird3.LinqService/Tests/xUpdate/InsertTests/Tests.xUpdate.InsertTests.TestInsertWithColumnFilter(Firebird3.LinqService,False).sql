BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	@FirstName,
	@LastName,
	@Gender
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @FirstName_1 VarChar(18) -- String
SET     @FirstName_1 = 'InsertColumnFilter'

SELECT FIRST @take 
	"x"."FirstName", 
	"x"."PersonID", 
	"x"."LastName", 
	"x"."MiddleName", 
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @FirstName_1

BeforeExecute
-- Firebird3 Firebird
DECLARE @newName VarChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	"Person" "x"
WHERE
	"x"."FirstName" = @newName

