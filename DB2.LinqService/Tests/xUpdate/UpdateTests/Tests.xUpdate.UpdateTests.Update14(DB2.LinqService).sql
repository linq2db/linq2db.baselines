BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
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
DECLARE @name VarChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx Integer(4) -- Int32
SET     @idx = 4

UPDATE
	"Person" "t1"
SET
	"LastName" = RTrim(Char(CHARACTER_LENGTH(@name,CODEUNITS32) + @idx))
WHERE
	"t1"."FirstName" LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Update14%' ESCAPE '~'

