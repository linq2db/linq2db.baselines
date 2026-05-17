-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
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

-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
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
	)

-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
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
	)

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"xxPerson" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"xxPerson" "p"
WHERE
	"p"."FirstName" = 'Steven' AND "p"."LastName" = 'King' AND
	"p"."Gender" = 'M'

