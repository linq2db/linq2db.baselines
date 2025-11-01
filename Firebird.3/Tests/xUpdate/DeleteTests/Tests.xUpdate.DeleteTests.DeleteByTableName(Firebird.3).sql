-- Firebird.3 Firebird3
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'

INSERT INTO "xxPerson"
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

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"xxPerson" "t1"

-- Firebird.3 Firebird3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"xxPerson" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 1

DELETE FROM
	"xxPerson" "t1"
WHERE
	"t1"."PersonID" = @ID

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"xxPerson" "t1"

