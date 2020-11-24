BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(8) -- String
SET     @FirstName = 'Update14'
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
-- Firebird3 Firebird
DECLARE @name VarChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx Integer -- Int32
SET     @idx = 4

UPDATE
	"Person"
SET
	"Person"."LastName" = Cast((Char_Length(Cast(@name as VarChar(255) CHARACTER SET UNICODE_FSS)) + Cast(@idx as Int)) as VarChar(11) CHARACTER SET UNICODE_FSS)
WHERE
	"Person"."FirstName" LIKE 'Update14%'

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Update14%'

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Update14%'

