BeforeExecute
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
DECLARE @name VarChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx Integer -- Int32
SET     @idx = 4

UPDATE
	"Person" "t1"
SET
	"LastName" = CHAR_LENGTH(CAST(@name AS VARCHAR(8))) + CAST(@idx AS Int)
WHERE
	"t1"."FirstName" STARTING WITH 'Update14'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Update14'

